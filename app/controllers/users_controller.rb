class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update]


  def show
    @user = User.find(params[:id])
    @events = @user.events.order(created_at: :desc)
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      flash[:announce] = "編集に成功しました"
      redirect_to user_path(@user.id)
    else
      flash[:danger] = "名前を入力してください"
      render :edit
    end
  end
  
  def followings
    @user = User.find(params[:id])
    @users = @user.followings.page(params[:page])
  end

  def followers
    @user = User.find(params[:id])
    @users = @user.followers.page(params[:page])
  end


  private

  def user_params
    params.require(:user).permit(:name, :introduction, :email)
  end

  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      flash[:danger] = "他のユーザーの情報は編集できません。"
      redirect_to user_path(current_user)
    end
  end


end
