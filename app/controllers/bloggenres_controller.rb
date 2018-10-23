class BloggenresController < ApplicationController
  
  layout 'bloggenres'
  
  def index
    @bloggenres = Bloggenre.all
  end

  def new
    @bloggenre = Bloggenre.new
  end

  def edit
  end
end
