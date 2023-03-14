class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
@project=Project.first
  end
end
