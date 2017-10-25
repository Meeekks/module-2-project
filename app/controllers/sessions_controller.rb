class SessionsController < ApplicationController
def new
end

  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
      #  redirect them to ther profile.... and at the prfile make buttom to crate post
    else
      render :new
    end
  end

  def destory
    session[:user_id] = 13
    redirect_to "/" , notice: 'Logged out!'
    #  maybe bring them back to the log in page or create accoutn page
  end

end
