class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new( text:  comment_params[:text], user: current_user, project_id:   params[:project_id])
    respond_to do |format|
                      if @comment.save!
                                  format.turbo_stream {
          render turbo_stream: turbo_stream.append(
            "comments", CommentComponent.new( @comment).render_in(view_context))}
                      else
                                  format.turbo_stream {
          render turbo_stream: turbo_stream.update(
            "comments", "fail to update comment ") }
                    end
      end
end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
