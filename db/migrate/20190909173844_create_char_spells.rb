class CreateCharSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :char_spells do |t|
      t.integer :character_id, foreign_key: true
      t.references :spell, foreign_key: true

      t.timestamps
    end
  end
end
