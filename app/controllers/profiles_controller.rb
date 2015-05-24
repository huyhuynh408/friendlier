class ProfilesController < ApplicationController
  def show
    @user = User.find_by_id(params[:id])
    @profile = Profile.find_by_id(params[:id])
  end

  def edit
    @profile = Profile.find_by_id(params[:id])
  end

  def update
    @profile = Profile.find_by_id(params[:id])
    @profile.update(user_params)
    redirect_to(profile_path(@profile))
  end

  private

  def user_params
    params.require(:profile).permit(:image)
  end
end
