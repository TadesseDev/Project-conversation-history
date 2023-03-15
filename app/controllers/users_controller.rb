class UsersController < ApplicationController
  before_action :authenticate_user!
  def index
      @project=Project.includes(:comments, :update_histories).first
      @project=Project.create!(name: "This is the very first project we are working on ", description: "This is the first project", status: "Active", user:  User.first) if @project.nil?
  end
end
