class CreateClassTypeAbilities < ActiveRecord::Migration[5.2]
  def change
    create_table :class_type_abilities do |t|
      t.integer :class_type_id
      t.string :description

      t.timestamps
    end
  end
end
