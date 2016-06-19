class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :title
      t.string :description
      t.string :source
      t.integer :event_id
    end
  end
end
