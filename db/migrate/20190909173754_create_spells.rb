class CreateSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :spells do |t|
      t.string :spell_type
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
