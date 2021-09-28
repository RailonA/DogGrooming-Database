class CreateServices < ActiveRecord::Migration[6.1]
  def change
    create_table :services do |t|
      t.string :category,  null: false
      t.string :petService,  null: false
      t.string :serviceDescription,  null: false
      t.string :servicePrice,  null: false

      t.timestamps
    end
  end
end
