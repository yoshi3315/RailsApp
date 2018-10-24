class BlogsController < ApplicationController
  
  layout 'blogs'
  before_action :set_page_num, only: [ :index, :genre ]
  
  def index
    @blogposts = Blogpost
      .all
      .order('created_at desc')
      .offset(page_size * @page_num)
      .limit(page_size)
    set_blogconfig
  end

  def genre
    @bloggenre = Bloggenre.find(params[:id])
    @blogpost = Blogpost
      .where('bloggenre_id = ?', params[:id])
      .order('created_at desc')
      .offset(page_size * @page_num)
      .limit(page_size)
    set_blogconfig
  end

  def show
    @blogpost = Blogpost.find(params[:id])
    set_blogconfig
  end
  
  private
  def set_page_num
    page_size = 5
    @page_num = 0
    if params[:page]
      @page_num = params[:page].to_i
    end
  end
  
  def set_blogconfig
    @blogconfig = Blogconfig.find(1)
  end
  
end
