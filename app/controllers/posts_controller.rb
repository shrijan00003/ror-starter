class PostsController < ApplicationController
    def index
            # display all data 
            @posts = Post.all
    end
    def new
        @data = 'data here'
    end

    def create
        # render plain: params[:post].inspect
        @post = Post.new(post_params)
        @post.save
        redirect_to @post
    end

    def show
        @post = Post.find(params[:id])
        
    end
    
    
    private def post_params
        params.require(:post).permit(:title, :body)
    end
    
    
    
end
