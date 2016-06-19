require 'openssl'
require 'base64'
require 'json'

class S3Direct
  def initialize(aws_access_key, aws_secret_key, options = {})
    require_options(options, :bucket, :expiration, :key, :acl)
    @aws_access_key = aws_access_key
    @aws_secret_key = aws_secret_key
    @options = options
  end

  def signature
    Base64.strict_encode64(
      OpenSSL::HMAC.digest('sha1', @aws_secret_key, policy)
    )
  end

  def policy
    Base64.strict_encode64({
      expiration: @options[:expiration].utc.iso8601,
      conditions: conditions
    }.to_json)
  end

  def to_json
    {
      url: "https://#{@options[:bucket]}.s3.amazonaws.com",
      credentials: {
        AWSAccessKeyId: @aws_access_key,
        policy:         policy,
        signature:      signature,
        acl:            @options[:acl],
        key:            @options[:key]
      }
    }
  end

  private

def conditions
  dynamic_key = @options[:key].include?('${filename}')
  prefix = @options[:key][0..(@options[:key].index('${filename}') - 1)]

  conditions = (@options[:conditions] || []).map(&:clone)
  conditions << { bucket: @options[:bucket] }
  conditions << { acl: @options[:acl] }
  conditions << { key: @options[:key] } unless dynamic_key
  conditions << ['starts-with', '$key', prefix] if dynamic_key
  conditions << ['starts-with', '$Content-Type', '']
end

private

def require_options(options, *keys)
  missing_keys = keys.select { |key| !options.key?(key) }
  return unless missing_keys.any?
  raise ArgumentError, missing_keys.map { |key| ":#{key} is required to generate an S3 upload policy." }.join('\n')
end
end
