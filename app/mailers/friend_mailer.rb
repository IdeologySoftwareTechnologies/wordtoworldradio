class FriendMailer < ActionMailer::Base
  default from: "world2world@gmail.com"

  def friend_email(friend)
    @friend = friend
    @url  = 'http://http://www.wordtoworldradio.com/'
    @to = @friend.friend_email
    mail(to: @to, subject: 'Invitation from world2world')
  end
end
