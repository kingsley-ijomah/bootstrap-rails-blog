class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :visitor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
