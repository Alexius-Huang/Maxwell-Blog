class RubyDiscussionsController < ApplicationController
	
	def index
		@discussions = RubyDiscussion.order("updated_at DESC")
	end

	def new
		@discussion = RubyDiscussion.new
	end

	def create
		@discussion = RubyDiscussion.create(discussion_params)

		if @discussion.save
			redirect_to ruby_discussions_path
		else
			render :new
		end
	end

	def show
		@discussion = RubyDiscussion.find(params[:id])
	end

	def edit
		@discussion = RubyDiscussion.find(params[:id])
	end

	def update
		@discussion = RubyDiscussion.find(params[:id])

		if @discussion.update(discussion_params)
			redirect_to ruby_discussion_path(@discussion)
		else
			render :edit
		end
	end

	def destroy
		@discussion = RubyDiscussion.find(params[:id])
		@discussion.destroy
		redirect_to ruby_discussions_path
	end

	private

	def discussion_params
		params.require(:ruby_discussion).permit(:title, :description)
	end

end
