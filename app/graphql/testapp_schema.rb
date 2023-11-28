# frozen_string_literal: true

class TestappSchema < GraphQL::Schema
  query(Types::QueryType)
end
