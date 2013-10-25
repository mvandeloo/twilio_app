class Message < ActiveRecord::Base

	def send_text_message
	    number_to_send_to = telephone
	 
	    twilio_sid = ENV["TWILIO_SID"]
	    twilio_token = ENV["TWILIO_TOKEN"]
	    twilio_phone_number = "441925321642"
	 
	    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
	 
	    @twilio_client.account.sms.messages.create(
	      :from => "+#{twilio_phone_number}",
	      :to => number_to_send_to,
	      :body => message
	    )
	end

end
