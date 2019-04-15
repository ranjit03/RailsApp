class ApplicationController < ActionController::Base
    helper_method :all_categories
  helper_method :all_posts
  
  def all_categories
	@categories = Category.all
  end
  
  def all_posts
	@posts = Post.all
  end
end
