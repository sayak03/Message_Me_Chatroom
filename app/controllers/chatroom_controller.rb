class ChatroomController < ApplicationController
	def index
	  @contents = Content.all
	end


end