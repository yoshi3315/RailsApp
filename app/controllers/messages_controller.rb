class MessagesController < ApplicationController
　layout 'messages'

  def index
    @msg = 'Message data.'
    @messages = Message.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
