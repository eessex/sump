class AddUrlToEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :url, :string
    rename_column :events, :title, :name
  end
end
