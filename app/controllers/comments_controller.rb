class CommentsController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    @comment = current_user.comments.build(comment_params)
    @comment.event_id = @event.id
    if @comment.save
      flash[:announce] = "コメントしました"
      redirect_to request.referrer || root_path
    else
      flash[:danger] = "コメントを入力してください"
      redirect_to request.referrer || root_path
    end
  end


  def destroy
    @event = Event.find(params[:event_id])
    Comment.find(params[:id]).destroy
    flash[:announce] = "コメントを削除しました"
    redirect_to request.referrer || root_path
  end



  private

  def comment_params
    params.require(:comment).permit(:comment, :user_id, :event_id)
  end
end
