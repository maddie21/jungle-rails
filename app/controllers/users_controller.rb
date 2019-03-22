class UsersController < ApplicationController
  def new
  end

  def create
    # We will get name, email, password
    # bcrypt library and convert password to hash
    # Save it to db
    # Login the user
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/register'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def index
    @users = User.all.order(created_at: :desc)
  end

  def show
    @user = User.find params[:id]
  end
end
