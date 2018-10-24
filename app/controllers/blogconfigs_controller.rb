class BlogconfigsController < ApplicationController
  
  layout 'cards'
  before_action :set_blogconfig

  def index
  end

  def edit
  end

  def update
    if @blogconfig.update(blogconfig_params)
      redirect_to('/blogconfigs')
    end
  end

  private
  def blogconfig_params
    params.require(:blogconfig).permit(:title, :subtitle, :stylename)
  end
  
  def set_blogconfig
    @blogconfig = Blogconfig.find(1)
  end
  
end
