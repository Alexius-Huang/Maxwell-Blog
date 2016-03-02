class CommentsController < ApplicationController
  before_action :load_commentable

  def create
  	@comment = @commentable.comments.create(comment_params)

    respond_to do |format|
      format.html { redirect_to @commentable }
      format.js
    end
  end

  private 

  def load_commentable
  	resource, id = request.path.split('/')[1, 2]
  	@commentable = resource.singularize.classify.constantize.find(id)
  end

  def comment_params
  	params.require(:comment).permit(:name, :content)
  end

end
