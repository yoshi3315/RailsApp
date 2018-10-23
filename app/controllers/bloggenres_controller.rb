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
      go_back
    end
  end

  def edit
    @bloggenre = Bloggenre.find(params[:id])
  end
  
  def update
    if @bloggenre.update(bloggenre_params)
      go_back
    end
  end
  
  private
  def bloggenre_params
    params.require(:bloggenre).permit(:name, :memo)
  end
  
  def go_back
    redirect_to('/bloggenres')
  end
  
end
