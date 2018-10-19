class CardsController < ApplicationController
  layout 'cards'

  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.create(card_params)
  end

  def edit
    
  end
  
  def update
  end

  def destroy
  end
  
  private
  #strong parameters リクエストパラメーターの検証（これがないとうまくいかないので注意）
  def card_params
    params.require(:card).permit(:title, :author, :price, :publisher, :memo)
  end
  
end
