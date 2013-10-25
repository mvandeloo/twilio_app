class MessagesController < ApplicationController


	def new
		@message = Message.new
	end


	def create
    	@message = Message.create(params[:message].permit(:message, :telephone))    
    	@message.send_text_message
        redirect_to @message

    rescue Twilio::REST::RequestError
        flash[:error] = "Please check your telephone number"
        render "new"
    end        

    def show
    	@message = Message.find(params[:id])   		
    end

end










