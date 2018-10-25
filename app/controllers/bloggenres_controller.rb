class BloggenresController < ApplicationController
  
  layout 'cards'
  before_action :set_bloggenre, only: [:edit, :update]

  def index
    @bloggenres = Bloggenre.all
  end

  def new
    @bloggenre = Bloggenre.new
  end
  
  def create
    @bloggenre = Bloggenre.new(bloggenre_params)
    if @bloggenre.save
      go_back
    else
      render('new')
    end
  end

  def edit
  end
  
  def update
    if @bloggenre.update(bloggenre_params)
      go_back
    else
      render('edit')
    end
  end
  
  private
  def bloggenre_params
    params.require(:bloggenre).permit(:name, :memo)
  end

  def set_bloggenre
    @bloggenre = Bloggenre.find(params[:id])
  end
  
  def go_back
    redirect_to(bloggenres_path)
  end
  
end
