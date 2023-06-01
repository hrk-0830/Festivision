class EventsController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :ensure_correct_user, only: [:edit, :update, :destry]

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
      if @event.save
        redirect_to event_path(@event.id)
        flash[:announce] = "投稿に成功しました"
      else
        flash[:danger] = "必要情報を入力してください"
        render :new
      end
  end

  def index
    @events = Event.all.page(params[:page]).order(created_at: :desc)
  end

  def show
    @event = Event.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to event_path(@event)
      flash[:announce] = "編集に成功しました"
    else
      flash[:danger] = "必要情報を入力してください"
      redirect_to edit_event_path(@event)
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
    flash[:announce] = "削除に成功しました"
  end

  private

  def event_params
    params.require(:event).permit(:name, :overview, :prefecture_status, :start_time, :user_id, :image)
  end


  def ensure_correct_user
    @event = Event.find(params[:id])
    @user = @event.user
    unless @user == current_user
      flash[:danger] = "他のユーザーの情報は編集できません。"
      redirect_to root_path
    end
  end

  def ensure_correct_user
    @event = Event.find(params[:id])
    @user = @event.user
    unless @user == current_user
      flash[:danger] = "他のユーザーの情報は編集できません。"
      redirect_to public_events_path
    end
  end

end