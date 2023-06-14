class ChatroomController < ApplicationController
	before_action :require_user
	def index
		@content = Content.new
	    @contents = Content.all
	end


end