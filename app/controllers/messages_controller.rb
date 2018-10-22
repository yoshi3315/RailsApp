class MessagesController < ApplicationController
　layout 'messages'

  def index
    @msg = 'Message data.'
    @messages = Message.all
  end

  def show
    @msg = 'Indexed data.'
    @message = find(params[:id])
  end

  def new
    @msg = 'Message data.'
    @message = Message.new
  end
  
  def create
    @message = Message.new(message_params)
    if @message.save
      redirect_to(messages_path)
    else
      render('new')
    end
  end

  def edit
    @msg = 'edit data.[id = ' + params[:id] + ']'
    @message = find(params[:id])
  end
  
  def update
    @message = find(params[:id])
    @message.update(message_params)
    redirect_to(messages_path)
  end
  
  def destroy
    @message = find(params[:id])
    @message.destroy
    redirect_to(messages_path)
  end
  
  private
  def message_params
    params.require(:message).permit(:person_id, :title, :message)
  end
  
end
