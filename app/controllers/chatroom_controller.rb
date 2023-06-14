class ChatroomController < ApplicationController
	before_action :require_user
	def index
	  @contents = Content.all
	end


end