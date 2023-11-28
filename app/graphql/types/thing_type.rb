module Types
  class ThingType < Types::Base::Object
    description 'A thing'
    field :id, ID, null: false
    field :name, String
    field :yes_or_no, Boolean
  end
end
