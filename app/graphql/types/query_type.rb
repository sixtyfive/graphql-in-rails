class QueryType < GraphQL::Schema::Object
  description "The query root of this schema"

  # First describe the field signature:
  field :thing, ThingType, "Find a thing by ID" do
    argument :id, ID
  end

  # Then provide an implementation:
  def thing(id:)
    Thing.find(id)
  end
end

