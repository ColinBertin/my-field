class CreateFields < ActiveRecord::Migration[6.1]
  def change
    create_table :fields do |t|
      t.string :location
      t.integer :price
      t.integer :type
      t.text :equipment
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
