class BloggenresController < ApplicationController
  
  layout 'bloggenres'
  
  def index
    @bloggenres = Bloggenre.all
  end

  def new
    @bloggenre = Bloggenre.new
  end
  
  def create
    if @bloggenre = Bloggenre.create(bloggenre_params)
      redirect_to('/bloggenres')
    end
  end

  def edit
  end
end
