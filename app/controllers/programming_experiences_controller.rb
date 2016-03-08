class ProgrammingExperiencesController < ApplicationController
	def index
		@discussions = ProgrammingExperience.order("updated_at DESC")
	end

	def new
		@discussion = ProgrammingExperience.new
	end

	def create
		@discussion = ProgrammingExperience.create(discussion_params)

		if @discussion.save
			redirect_to programming_experiences_path
		else
			render :new
		end
	end

	def show
		@discussion = ProgrammingExperience.find(params[:id])
    @commentable = @discussion
    @comments = @commentable.comments
    @comment = Comment.new
	end

	def edit
		@discussion = ProgrammingExperience.find(params[:id])
	end

	def update
		@discussion = ProgrammingExperience.find(params[:id])

		if @discussion.update(discussion_params)
			redirect_to programming_experience_path(@discussion)
		else
			render :edit
		end
	end

	def destroy
		@discussion = ProgrammingExperience.find(params[:id])
		@discussion.destroy
		redirect_to programming_experiences_path
	end

	private

	def discussion_params
		params.require(:programming_experience).permit(:title, :description)
	end

end
