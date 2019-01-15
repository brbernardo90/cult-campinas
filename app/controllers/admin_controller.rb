class AdminController < ApplicationController

  before_action :authenticate_user!

  def index
    redirect_to eventos_url
  end
end
