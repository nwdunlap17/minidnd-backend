class CreatePreparedSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :prepared_spells do |t|
      t.integer :character_id
      t.integer :spell_id

      t.timestamps
    end
  end
end
