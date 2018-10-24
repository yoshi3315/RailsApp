class BlogsController < ApplicationController
  
  layout 'blogs'
  
  def index
    page_size = 5
    @page_num = 0
    if params[:page]
      @page_num = params[:page].to_i
    end
    @blogposts = Blogpost.all.order('created_at desc')
      .offset(page_size * @page_num)
      .limit(page_size)
    @blogconfig = Blogconfig.find(1)
  end

  def genre
  end

  def show
  end
end
