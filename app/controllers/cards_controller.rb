class CardsController < ApplicationController
  layout 'cards'
  before_action :set_card, only: [ :show, :edit, :update, :destroy ]

  def index
    @cards = Card.all
  end

  def show
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.create(card_params)
    @card.save
    go_back
  end

  def edit
  end
  
  def update
    @card.update(card_params)
    go_back
  end

  def destroy
    @card.destroy
    go_back
  end
  
  private
  #strong parameters リクエストパラメーターの検証（これがないとうまくいかないので注意）
  def card_params
    params.require(:card).permit(:title, :author, :price, :publisher, :memo)
  end
  
  def set_card
    @card = Card.find(params[:id])
  end
  
  def go_back
    redirect_to cards_path
  end
  
end
