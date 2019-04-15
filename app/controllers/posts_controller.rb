class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    def show
        @post = Post.find(params[:id])
        @user = AdminUser.all
        @posts =Post.all
        @categories = Category.all
    end
    def create
		@post = Post.create(post_params)
		
    end
   

    def post_params
        params.require(:post).permit(:title, :body)
      end
end
