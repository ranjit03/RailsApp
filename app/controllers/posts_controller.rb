class PostsController < ApplicationController
    def index
        @posts = Category.all
        
    end
end
