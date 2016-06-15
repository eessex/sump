class AddIndexToPresenters < ActiveRecord::Migration[5.0]
  def change
    add_index :presenters, :event_id
  end
end
