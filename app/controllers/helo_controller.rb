class HeloController < ApplicationController
  
  def index
    if request.post?
      @title = 'Result'
      if params['s1']
        @msg = 'you selected: '
        params[:s1].each do |val|
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
