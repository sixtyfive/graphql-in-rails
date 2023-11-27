module Types
  class ThingType < Types::BaseObject
    description 'A thing'
    field :id, ID, null: false
    field :name, String
    field :yes_or_no, Bool
  end
end
