class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
      if @event.save
        # タグの保存
        redirect_to event_path(@event.id)
        flash[:announce] = "投稿に成功しました"
      else
        flash[:danger] = "必要情報を入力してください"
        render :new
      end
  end

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
  end

  private

  def event_params
    params.require(:event).permit(:name, :overview, :prefecture_status, :start_time, :user_id, :image)
  end


  def ensure_correct_customer
    @post = Post.find(params[:id])
    @customer = @post.customer
    unless @customer == current_customer
      flash[:danger] = "他のユーザーの情報は編集できません。"
      redirect_to public_posts_path
    end
  end

end