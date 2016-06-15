class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.integer :price
      t.string :description
      t.string :image
      t.integer :presenter_id
    end
  end
end
