class MessagesController < ActionController::Base
  def index

  end

  def new
    @users = User.where('email != ?', current_user.email).pluck(:email)
    @message = Message.new
  end
end
