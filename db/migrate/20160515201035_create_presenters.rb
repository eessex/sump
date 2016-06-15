class CreatePresenters < ActiveRecord::Migration[5.0]
  def change
    create_table :presenters do |t|
      t.string :name
      t.string :description
      t.string :url
      t.string :image
    end
  end
end
