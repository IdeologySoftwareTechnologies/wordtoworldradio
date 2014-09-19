class FriendsController < ApplicationController
  def new
  	@friend = Friend.new
  end
  def create
		@friend = Friend.new(friend_params)
 
    respond_to do |format|
      if @friend.save
        # Tell the UserMailer to send a welcome email after save
        FriendMailer.friend_email(@friend).deliver
 
        format.html { redirect_to(new_friend_path, notice: 'friend was successfully created.') }
        format.json { render json: @friend, status: :created, location: @friend }
      else
        format.html { render action: 'new' }
        format.json { render json: @friend.errors, status: :unprocessable_entity }
      end
    end
 
	end
	
	private
	def friend_params
		params.require(:friend).permit(:name,:friend_email)
	end
end
