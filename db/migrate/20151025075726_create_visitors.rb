class CreateVisitors < ActiveRecord::Migration[6.1]
  def change
    create_table :visitors do |t|
      t.string :fullname
      t.string :email

      t.timestamps null: false
    end
  end
end
