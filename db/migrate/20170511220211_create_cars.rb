class CreateCars < ActiveRecord::Migration[5.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.text :description
      t.string :plate

      t.timestamps
    end
  end
end
