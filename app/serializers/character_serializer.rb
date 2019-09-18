class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :level, :xp, :description, 
  :max_hp, :hp, :armor_class,
  :armor, :weapon, :toHit, :damageMod, :damageDie,
  :athletics, :subterfuge, :lore, 
  :physical_save, :magic_save, :initiative,
  :class_type, :race, :race_abilities, :class_type_abilities,
  :spell_slots, :spells, :img_url
end
