class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
      @project=Project.includes(:comments, :update_histories).first
  end
end
