class IdentitiesController < ApplicationController
  def index
    @identities = Identity.all
    render json: @identities
  end

end
