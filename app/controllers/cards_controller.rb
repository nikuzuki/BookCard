class CardsController < ApplicationController
  layout 'cards'
  def index
    @cards = Card.all
  end

  def show
    @card = Card.find(params[:id])
  end

  def add
    if request.post? then
      Card.create(card_params)
      redirect_to '/cards'
    else
      @card = Card.new
    end
  end

  def edit
    @card = Card.find(params[:id])
    if request.patch? then
      @card.update(card_params)
      redirect_to '/cards'
    end
  end

  def delete
    Card.find(params[:id]).destroy
    redirect_to '/cards'
  end

  private
  def card_params
    params.require(:card).permit(:title, :author, :price, :publisher, :memo, :evaluation)
  end

end
