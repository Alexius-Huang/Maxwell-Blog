class RubyGemsController < ApplicationController

	def index
		@discussions = RubyGem.order("updated_at DESC")
	end

	def new
		@discussion = RubyGem.new
	end

	def create
		@discussion = RubyGem.create(discussion_params)

		if @discussion.save
			redirect_to ruby_gems_path
		else
			render :new
		end
	end

	def show
		@discussion = RubyGem.find(params[:id])
		@commentable = @discussion
    @comments = @commentable.comments
    @comment = Comment.new
	end

	def edit
		@discussion = RubyGem.find(params[:id])
	end

	def update
		@discussion = RubyGem.find(params[:id])

		if @discussion.update(discussion_params)
			redirect_to ruby_gem_path(@discussion)
		else
			render :edit
		end
	end

	def destroy
		@discussion = RubyGem.find(params[:id])
		@discussion.destroy
		redirect_to ruby_gems_path
	end

	private

	def discussion_params
		params.require(:ruby_gem).permit(:title, :description)
	end

end
