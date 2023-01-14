class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: [:destroy, :index]
  
  def index
    @users = User.paginate(page: params[:page])
  end
  
  def show
    @user = User.find(params[:id])
  end

  # daje praznu formu na front
  def new
    @user = User.new
  end

  # kada user klikne dugme OK nakog kreiranja poziva se create
  def create
    @user = User.new(user_params)
    if @user.save
      # UserMailer.account_activation(@user).deliver_now
      # flash[:info] = "Please check your email to activate your account."

      redirect_to @user
    else
      render 'new', status: :unprocessable_entity
    end
  end

  # daje popunjenu  formu na front
  def edit
    @user = User.find(params[:id])
  end

  # kada user klikne dugme OK nakog editovanja poziva se update
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
   def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url, status: :see_other
   end

  
  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    # def admin_user
    #   redirect_to(root_url, status: :see_other) unless current_user.admin?
    # end
    def admin_user
      redirect_to(root_url, status: :see_other) unless current_user.role == 'ADMIN'
    end

    def moderator_user
      redirect_to(root_url, status: :see_other) unless current_user.role == 'MODERATOR'
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end

    
end
