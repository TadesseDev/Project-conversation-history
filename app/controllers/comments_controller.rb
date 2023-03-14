class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @project= Project.find(params[:project_id])
    @comment = Comment.new( text:  comment_params[:text], user: current_user, project:   @project)
    respond_to do |format|
                      if @comment.save!
                                  format.turbo_stream {
          render turbo_stream: [turbo_stream.append(
            "comments", CommentComponent.new( @comment).render_in(view_context)),
         turbo_stream.replace( "new-comment", NewCommentComponent.new(project: @project).render_in(view_context))
        ]
          }
                      else
                                  format.turbo_stream {
          render turbo_stream: turbo_stream.update(
            "comments", "fail to update comment ") }
            #TODO: check if this works
                    end
      end
end

  def comment_params
    params.require(:comment).permit(:text)
  end
end
