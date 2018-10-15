class HeloController < ApplicationController
  
  def index
    if request.post?
      @title = 'Result'
      if params['s1']
        @msg = 'you selected: '
        for val in params[:s1]
          @msg += val + ' '
        end
      else
        @msg = 'not selected...'
      end
    else
      @title = 'Index'
      @msg = 'select List...'
    end
  end
  
end
