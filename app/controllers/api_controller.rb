class ApiController < ApplicationController
  protect_from_forgery with: :null_session

  def execute
    pp params[:variables]
    pp params[:query]
    pp params[:operationName]
    # variables = {}
    query = '{thing {name}}'
    # operation_name = ''
    # context = {} # e.g. the current user, if any
    result = Schema.execute(query) #, variables: variables, context: context, operation_name: operation_name)
    render json: result
  end
end
