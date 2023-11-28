# frozen_string_literal: true

module Types
  module Base
    class Connection < Types::Base::Object
      field :total_count, Integer, null: false

      def total_count
        object.items.count(:id)
      end
    end
  end
end