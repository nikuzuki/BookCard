class CardsController < ApplicationController
  #layout 'cards'
  def index
    @cards = Card.all
  end

  def show
    
  end

  def add
  end

  def edit
  end
end
