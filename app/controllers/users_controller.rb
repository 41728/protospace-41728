class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @nickname = @user.name
    @prototypes = @user.prototypes
  end
end