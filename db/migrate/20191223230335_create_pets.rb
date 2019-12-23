class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.references :category, null: false, foreign_key: true
      t.string :name
      t.decimal :price
      t.integer :age
      t.boolean :desexed
      t.text :description

      t.timestamps
    end
  end
end
