class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.where(is_active: true)
  end

  # Set
  def new
    @user = User.new
    @is_login = true
  end
  # Spike
  def create
    user = User.new(params.require(:user).permit(:email, :password, :password_confirmation))
    if @user.save
      redirect_to photos_path
    else
      redirect_to new_session_path
    end
  end

  def show
    @user = user.find(params[:user_id])
  end
  
  def edit
  end
  
  def update
    @user = user.find(params[:user_id])
    if current_user != @user
      if current_user
        redirect_to user_paths(current_user)
      else
        redirect_to new_session_path
      end
    elsif user_care = @user.cares.new(params.require(:user).permit(:name, :email, :is_active))
    redirect_to_users_path
  else 
    render 'edit'
  end

  def destroy
    User.find(params[:id])
    @user.is_active = false
    @user.save
    # Exactly the same idea as this little number:
    #User.find_by(id: params[:id])
    redirect_to users_path
  end

  def reactivate
    @user = user.find(params[:id])
    @user.is_active = true
  end
 end
end
