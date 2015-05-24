class ProfilesController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    @profile = Profile.find_by_id(params[:id])
  end
end
