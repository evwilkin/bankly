class UsersController < ApplicationController
before_action :is_authenticated?, except: [:new, :create]


  def new
  	@user = User.new
  end

  def create
  	@user = User.create(user_params)
    session[:user_id] = @user.id
  	flash[:success] = "You have successfully signed up!"
  	redirect_to dashboard_path
  end

  def show
  	render layout: false, template: "/users/show"
  end

  def patch
    uploaded_file = params[:picture].path
    cloudinary_file = Cloudinary::Uploader.upload(uploaded_file)
    @current_user.picture = cloudinary_file['public_id']
    @current_user.save
    redirect_to users_show_path
  end

  private

  def user_params
  	params.require(:user).permit(:name, :email, :password, :password_confirmation, :budget, :income)
  end
end
