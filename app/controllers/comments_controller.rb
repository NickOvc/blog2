class CommentsController < ApplicationController
  def create
    @pozt = Pozt.find(params[:pozt_id])
    @comment = @pozt.comments.create(params[:comment].permit(:name, :body))
    redirect_to pozt_path(@pozt)
  end
  #private
 # def comment_params
   # params.require(:comment).permit(:name, :body)
 # end
end
