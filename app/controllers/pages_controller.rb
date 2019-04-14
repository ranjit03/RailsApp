class PagesController < ApplicationController
  def home
  end

  def blog
    @posts = Post.all
  end

  def about
  end

  def contact
  end
end
