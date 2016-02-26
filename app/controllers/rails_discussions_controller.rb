class RailsDiscussionsController < ApplicationController

	def index
		@discussions = RailsDiscussion.order("updated_at DESC")
	end

	def new
		@discussion = RailsDiscussion.new
	end

	def create
		@discussion = RailsDiscussion.create(discussion_params)

		if @discussion.save
			redirect_to rails_discussions_path
		else
			render :new
		end
	end

	def show
		@discussion = RailsDiscussion.find(params[:id])
	  @commentable = @discussion
    @comments = @commentable.comments
    @comment = Comment.new
	end

	def edit
		@discussion = RailsDiscussion.find(params[:id])
	end

	def update
		@discussion = RailsDiscussion.find(params[:id])

		if @discussion.update(discussion_params)
			redirect_to rails_discussion_path(@discussion)
		else
			render :edit
		end
	end

	def destroy
		@discussion = RailsDiscussion.find(params[:id])
		@discussion.destroy
		redirect_to rails_discussions_path
	end

	private

	def discussion_params
		params.require(:rails_discussion).permit(:title, :description)
	end

end
