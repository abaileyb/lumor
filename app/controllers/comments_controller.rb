class CommentsController < ApplicationController

def create
    @idea = Idea.find(params[:idea_id])
    @comment = @idea.comments.build(comment_params)
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to idea_path(@idea)
    else
      render 'new'
    end
end
 
  def destroy
    @idea = Idea.find(params[:idea_id])
    @comment = @idea.comments.find(params[:id])
    @comment.destroy
    redirect_to idea_path(@idea)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:title, :text)
    end
end