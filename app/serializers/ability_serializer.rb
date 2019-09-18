class AbilitySerializer < ActiveModel::Serializer
  attributes :id, :race_id, :class_type_id, :character_id, :description
end
