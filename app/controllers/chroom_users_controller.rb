class ChroomUsersController < ApplicationController
	before_action :authenticate_user!
	before_action :set_chroom	

	def create
		@chroom_user = @chroom.chroom_users.where(user_id: current_user.id).first_or_create
		redirect_to @chroom
	end

	def destroy
		@chroom_user = @chroom.chroom_users.where(user_id: current_user.id).destroy_all
		redirect_to chrooms_path
	end

	private
	def set_chroom
		@chroom = Chroom.find(params[:chroom_id])
	end
end