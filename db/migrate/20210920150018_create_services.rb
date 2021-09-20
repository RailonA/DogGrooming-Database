class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :category
      t.string :petService
      t.string :serviceDescription
      t.string :servicePrice

      t.timestamps
    end
  end
end
