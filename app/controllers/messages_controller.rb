class MessagesController < ActionController::Base
  def index
    @messages = Message.where('to_user = ?', current_user.email)
  end

  def show
    @message = Message.find(params[:id])
  end

  def new
    @users = User.where('email != ?', current_user.email).pluck(:email)
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.from = current_user.email
    if @message.save
      flash[:notice] = "Message Sent"
      redirect_to root_path
    else
      flash[:errors] = @message.errors.full_messages
      render 'new'
    end
  end

  private

  def message_params
    params.require(:message).permit(:to_user, :subject, :body)
  end
end
