class HomeController < ApplicationController
  def index
  end

  def computer_science
  	@ruby_discussions = RubyDiscussion.order("updated_at DESC")
  	@rails_discussions = RailsDiscussion.order("updated_at DESC")
  end
end
