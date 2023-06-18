class ChatroomController < ApplicationController
	before_action :require_user
	def index
		@content = Content.new
	    @contents = Content.custom_display
	end


end