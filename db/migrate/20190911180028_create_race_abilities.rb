class CreateRaceAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :race_abilities do |t|
      t.integer :race_id
      t.string :description

      t.timestamps
    end
  end
end
