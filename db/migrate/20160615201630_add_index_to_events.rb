class AddIndexToEvents < ActiveRecord::Migration[5.0]
  def change
    add_index :events, :presenter_id
  end
end
