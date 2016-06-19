module Api
  module V1
    class S3DirectController < ApplicationController
      def presign
        render json: S3Direct.new(Figaro.env.aws_access_key, Figaro.env.aws_secret_key, {
          bucket: Figaro.env.aws_bucket,
          acl: 'public-read',
          key: 'uploads/${filename}',
          expiration: Time.now + 10 * 60,
          conditions: [
            ['starts-with', '$name', '']
          ]
        }).to_json
      end
    end
  end
end

# Api:S3DirectController ?
