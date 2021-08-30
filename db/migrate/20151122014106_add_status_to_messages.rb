class AddStatusToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :status, :boolean, null: false, default: false
  end
end
