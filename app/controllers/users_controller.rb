class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def new
  	@users = User.new
  end
  def create
  	@users = User.new(user_params)
  	if @users.save
  		redirect_to :action => 'index'
  	else
  	render :action => new	
  	end
  end

  def show
  	@users = User.find(params[:id])
  end
  def move
    
  end


  def edit
  	@users = User.find(params[:id])
  end
  def update
  	@users = User.find(params[:id])
  	if 
  		@users.update_attributes(user_params)
        redirect_to(:action => 'show', :id=> @users.id)
  	else
  		render :action => 'edit'
  end
  end

  def destroy
  @users = User.find(params[:id])
  @users.destroy
  redirect_to :action => 'index'


  end
  private
  def user_params
  	params.permit(:first_name, :last_name, :contact)
  end
end
