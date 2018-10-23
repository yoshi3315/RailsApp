class BlogconfigsController < ApplicationController
  
  layout 'blogconfigs'

  def index
    @blogconfigs = Blogconfig.find(1)
  end

  def edit
    @blogconfigs = Blogconfig.find(1)
    if @blogconfigs.update(blogconfig_params)
      redirect_to('/blogconfigs')
    end
  end

  private
  def blogconfig_params
    params.require(:blogconfig).permit(:title, :subtitle, :stylename)
  end
  
end
