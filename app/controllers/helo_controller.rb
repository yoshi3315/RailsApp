class HeloController < ApplicationController
  
  def index
    if request.post?
      @title = 'Result'
      if params['check1']
        @msg = 'you Checked!!'
      else
        @msg = 'not checked...'
      end
    else
      @title = 'Index'
      @msg = 'check it...'
    end
  end
  
end
