class ProfilesController < ApplicationController
end
def show\n  @user = User.find(params[:id])\nend
def edit\n  @user = User.find(params[:id])\nend
  def update\n    @user = User.find(params[:id])\n    if @user.update(user_params)\n      redirect_to @user\n    else\n      render edit\n    end\n  end\n\n  private\n    def user_params\n      params.require(:user).permit(:first_name, :last_name)\n    end
