class UsersController < ApplicationController
  def show
    @user = current_user
    @events = Event.all
  end

end