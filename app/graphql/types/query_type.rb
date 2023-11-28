# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    description 'The query root of this schema'

    field(:thing, Types::ThingType, 'Find a thing by ID'){argument :id, ID}
    field(:things, [Types::ThingType], 'Find all the things')

    def thing(id:)
      return Thing.find(id)
    rescue ActiveRecord::RecordNotFound => e
      raise GraphQL::ExecutionError, e.message
    end

    def things
      return Thing.all
    end
  end
end