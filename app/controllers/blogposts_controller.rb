class BlogpostsController < ApplicationController

  layout 'blogposts'
  
  def index
    @blogposts = Blogpost.all.order('created_at desc')
  end

  def new
    @blogpost = Blogpost.new
    @bloggenres = Bloggenre.all
  end

  def create
    if @blogpost = Blogpost.create(bloggenre_params)
      redirect_to('/blogposts')
    end
  end

  def edit
    @blogpost = Blogpost.find(params[:id])
    @bloggenres = Bloggenre.all
  end
  
  def update
    if @blogpost.update(bloggenre_params)
      redirect_to('/blogposts')
    end
  end

  def destroy
    @blogpost = Blogpost.find(params[:id])
    @blogpost.destroy
    redirect_to('/blogposts')
  end

end
