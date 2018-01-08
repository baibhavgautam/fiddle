class CommentsController < ApplicationController

  def create
  comment = Comment.new comment_params
    respond_to do |format|
      if comment.save
        msg = { :message => 'Success', :id => comment.id }
      else
        msg = { :message => 'Faliure', :errors => comment.errors.full_messages }
      end
      # msg = { :message => comment.save ? "Success" : "Fail" }
      format.json  { render :json => msg }
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:author_email, :page_id, :comment_id, :body)
  end

end
