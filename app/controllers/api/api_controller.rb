class Api::ApiController < ApplicationController
  def render_error(model)
    render json: { errors: model.errors}, status: 422
  end

end
