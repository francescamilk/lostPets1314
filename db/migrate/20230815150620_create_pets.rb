class CreatePets < ActiveRecord::Migration[7.0]
  def change
    create_table :pets do |t|
      t.string :breed
      t.string :color
      t.boolean :rescued, default: false

      t.timestamps
    end
  end
end
