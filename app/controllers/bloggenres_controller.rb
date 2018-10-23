class BloggenresController < ApplicationController
  
  layout 'bloggenres'
  
  def index
    @bloggenres = Bloggenre.all
  end

  def new
  end

  def edit
  end
end
