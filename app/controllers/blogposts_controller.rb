class BlogpostsController < ApplicationController

  layout 'blogposts'
  
  def index
    @blogposts = Blogpost.all.order('created_at desc')
  end

  def new
    @blogpost = Blogpost.new
    @bloggenres = Bloggenre.all
  end

  def edit
  end

  def delete
  end
end
