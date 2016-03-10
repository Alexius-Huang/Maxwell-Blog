class HomeController < ApplicationController
  def index
  end

  def computer_science
  	@programming_experiences = ProgrammingExperience.all.order("created_at DESC")
  	@programming_basics = ProgrammingBasic.all.order("created_at DESC")
  	@ruby_discussions = RubyDiscussion.all.order("created_at DESC")
  	@rails_discussions = RailsDiscussion.all.order("created_at DESC")
  	@ruby_gems = RubyGem.all.order("created_at DESC")
  end
end
