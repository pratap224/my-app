class PostsController < ApplicationController
  def index
  	@posts = Post.all
  end

  def new
  @posts = Post.new
end

 
  	def create
        @posts = Post.new(params[:post].permit(:title, :content))

        if @posts.save
            redirect_to @posts
        else
            render 'new'
        end
    end

    def show
    	binding.pry
        @posts = Post.find(params[:post_id])
    end
end

