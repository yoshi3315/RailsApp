class BlogpostsController < ApplicationController

  layout 'blogposts'
  before_action :set_blogpost, only: [ :edit, :destroy ]
  before_action :set_bloggenres, only: [ :new, :edit ]
  
  def index
    @blogposts = Blogpost.all.order('created_at desc')
  end

  def new
    @blogpost = Blogpost.new
  end

  def create
    if @blogpost = Blogpost.create(blogpost_params)
      go_back
    end
  end

  def edit
  end
  
  def update
    if @blogpost.update(blogpost_params)
      go_back
    end
  end

  def destroy
    @blogpost.destroy
    go_back
  end
  
  private
  def blogpost_params
    params.require(:blogpost).permit(:title, :read, :content, :bloggenre_id)
  end

  def set_blogpost
    @blogpost = Blogpost.find(params[:id])
  end

  def set_bloggenres
    @bloggenres = Bloggenre.all
  end

  def go_back
    redirect_to('/blogposts')
  end

end
