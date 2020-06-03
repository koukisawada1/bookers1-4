class RelationshipsController < ApplicationController

	def follower_index
		@user = User.find(params[:id])
	end

	def followed_index
		@user = User.find(params[:id])
	end

	def create
		current_user.follow(params[:id])
		redirect_back(fallback_location: root_path)
	end

	def destroy
		current_user.unfollow(params[:id])
		redirect_back(fallback_location: root_path)
	end
end
