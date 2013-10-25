require 'spec_helper'

describe Message do

	it 'can have message' do
		message = Message.create message: "test"
		expect(message.message).to include "test"	
	end	

	it 'can have an telephone number' do 
		message = Message.create telephone: "004917225778000"
		expect(message.telephone).to include "004917225778000"
	end 

end
