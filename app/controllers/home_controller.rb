class HomeController < ApplicationController
  def index
  end

  def computer_science
  	@programming_article = ProgrammingBasic.last
  	@ruby_article = RubyDiscussion.last
  	@rails_article = RailsDiscussion.last
  	@ruby_gem_article = RubyGem.last
  end
end
