# frozen_string_literal: true

module Types
  class BaseConnection < Types::BaseObject
    field :total_count, Integer, null: false

    def total_count
      object.items.count(:id)
    end
  end
end