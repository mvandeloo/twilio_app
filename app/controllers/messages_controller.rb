class MessagesController < ApplicationController


	def new
		@message = Message.new
	end

	def create
    	@message = Message.create(params[:message].permit(:message, :telephone))    
    	redirect_to @message
    end	

    def show
    	@message = Message.find(params[:id])   		
    end

end
