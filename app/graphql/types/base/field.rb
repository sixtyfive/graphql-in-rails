# frozen_string_literal: true

module Types
  module Base
    class Field < GraphQL::Schema::Field
      argument_class Types::Base::Argument
    end
  end
end