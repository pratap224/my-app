class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new(a_params)
    if @articles.save
      redirect_to :action =>'index'
    else
      render :action => 'new'
    end
  end
  def show
    
        @articles = Article.find(params[:id])
  end

  def edit

    @articles = Article.find(params[:id])
  end
  def update

     @articles = Article.find(params[:id])
      
     
      if @articles.update_attributes(a_params)
        redirect_to(:action => 'show', :id=> @articles.id)
      else
        render :action=> 'edit'
      end
      
  end
  
  def destroy
    @articles = Article.find(params[:id])
    @articles.destroy
    redirect_to :action => 'index'
  end
 
  private

  def a_params
    params.permit(:name, :content, :price)
  end

end
