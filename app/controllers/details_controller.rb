class DetailsController < ApplicationController
  def index
  	@details = Detail.all
  end
   def show
    @details = Detail.find(params[:id])
   end
    
  def new
  	@details = Detail.new
  end

  def create 
  		@details = Detail.new(details_params)
     
  		if @details.save
  			redirect_to  :action => 'index'
  		else
  			render :action=> 'new'
  		end
  		
  	end
  def edit
   
    @details = Detail.find(params[:id])
  end 


   def update 
 
     
      @details = Detail.new(details_params)
     
      if @details.save
        redirect_to(:action => 'show', :id=> @details.id)
      else
        render :action=> 'edit'
      end
      
    end
    
    
    def destroy
      @details = Detail.find(params[:id])
      @details.destroy
      redirect_to :action => 'index'

    end

    private
      def details_params
          params.permit(:first_name, :last_name, :phone_num, :address)
      end

  
end
