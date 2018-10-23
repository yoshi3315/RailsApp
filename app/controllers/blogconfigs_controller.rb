class BlogconfigsController < ApplicationController
  
  layout 'blogconfigs'

  def index
    @blogconfigs = Blogconfig.find(1)
  end

  def edit
  end
end
