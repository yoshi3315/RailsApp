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
    if @blogpost = Blogpost.create(blogpost_params)
      redirect_to('/blogposts')
    end
  end

  def edit
    @blogpost = Blogpost.find(params[:id])
    @bloggenres = Bloggenre.all
  end
  
  def update
    if @blogpost.update(blogpost_params)
      redirect_to('/blogposts')
    end
  end

  def destroy
    @blogpost = Blogpost.find(params[:id])
    @blogpost.destroy
    redirect_to('/blogposts')
  end
  
  private
  def blogpost_params
    params.require(:blogpost).permit(:title, :read, :content, :bloggenre_id)
  end

end
