class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :age
      t.integer :castration
      t.integer :category
      t.integer :character
      t.integer :animal_type
      t.text :description
      t.integer :gender

      t.timestamps
    end
  end
end
