class ProgrammingBasicsController < ApplicationController

	def index
		@discussions = ProgrammingBasic.order("updated_at DESC")
	end

	def new
		@discussion = ProgrammingBasic.new
	end

	def create
		@discussion = ProgrammingBasic.create(discussion_params)

		if @discussion.save
			redirect_to programming_basics_path
		else
			render :new
		end
	end

	def show
		@discussion = ProgrammingBasic.find(params[:id])
    @commentable = @discussion
    @comments = @commentable.comments
    @comment = Comment.new
	end

	def edit
		@discussion = ProgrammingBasic.find(params[:id])
	end

	def update
		@discussion = ProgrammingBasic.find(params[:id])

		if @discussion.update(discussion_params)
			redirect_to programming_basic_path(@discussion)
		else
			render :edit
		end
	end

	def destroy
		@discussion = ProgrammingBasic.find(params[:id])
		@discussion.destroy
		redirect_to programming_basics_path
	end

	private

	def discussion_params
		params.require(:programming_basic).permit(:title, :description)
	end

end
