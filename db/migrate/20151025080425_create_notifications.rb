class CreateNotifications < ActiveRecord::Migration[6.1]
  def change
    create_table :notifications do |t|
      t.references :notifiable, polymorphic: true, index: true

      t.timestamps null: false
    end
  end
end
