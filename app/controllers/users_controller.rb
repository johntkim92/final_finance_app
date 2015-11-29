class UsersController < ApplicationController

  def create
    @user = User.new(user_params)

    if @user.save
      flash.notice = "Thanks for signing up. Please Log in!"
    else
      flash.notice = @user.errors.full_messages.to_sentence
    end

    redirect_to root_path
  end


  private

  def user_params
    return params.require(:user).permit(:email, :password)
  end

end
