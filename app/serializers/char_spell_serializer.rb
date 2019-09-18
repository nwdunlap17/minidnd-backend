class CharSpellSerializer < ActiveModel::Serializer
  attributes :id, :character_id
  has_one :spell
end
