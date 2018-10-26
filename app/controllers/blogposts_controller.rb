class BlogpostsController < ApplicationController

  layout 'cards'
  before_action :set_blogpost, only: [:edit, :update, :delete, :destroy]
  before_action :set_bloggenres, only: [:new, :edit]
  
  def index
    @blogposts = Blogpost.all.order('created_at desc')
  end

  def new
    @blogpost = Blogpost.new
  end

  def create
    @blogpost = Blogpost.new(blogpost_params)
    if @blogpost.save
      go_back
    else
      set_bloggenres
      render('new')
    end
  end

  def edit
  end
  
  def update
    if @blogpost.update(blogpost_params)
      go_back
    else
      set_bloggenres
      render('edit')
    end
  end

  def delete
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
    redirect_to(blogposts_path)
  end

end
