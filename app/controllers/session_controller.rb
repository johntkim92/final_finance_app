class SessionController < ApplicationController

  def create
    user = User.find_by(email: user_params[:email])

    if user && user.authenticate(user_params[:password])
      session[:current_user_id] = user.id
      flash.notice = "Thanks for logging in!"
      redirect_to articles_path
    else
      flash.notice = "Email / Password combo does not exist!"
      redirect_to root_path
    end
  end

  def destroy
    session[:current_user_id] = nil

    redirect_to root_path
  end


  private

  def user_params
    return params.require(:user).permit(:email, :password)
  end

end
