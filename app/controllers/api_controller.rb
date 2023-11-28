# frozen_string_literal: true

class ApiController < ApplicationController
  protect_from_forgery(with: :null_session)

  def execute
    result = TestappSchema.execute(
      params[:query],
      variables: params[:variables],
      context: {}, # user / token / etc.
      operation_name: params[:operationName]
    )
    render(json: result)
  end
end
