class HeloController < ApplicationController
  protect_from_forgery
  
  def index
    if request.post?
      @title = 'Result'
      @msg = 'you typed: ' + params[:input1] + '.'
      @value = params[:input1]
    else
      @title = 'Index'
      @msg = 'type text...'
      @value = ''
    end
  end
  
  def other
    redirect_to action: :index, params: { msg: 'from other page' }
  end

end
