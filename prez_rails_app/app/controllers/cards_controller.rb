class CardsController < ApplicationController
  before_action :set_cards, only: [:show, :edit, :update, :destroy]
  def index
    @cards = Card.all
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params(:name, :pic_url, :description, :faq, :frequency, :player_id, :team))
    if @card.save
      redirect_to card_path(@card)
    else
      render :new
    end
  end

  def show
    # binding.pry
  end

  def edit
  end

  def update
    if @card.update(card_params(:name, :pic_url, :description, :faq, :frequency, :player_id))
      redirect_to card_path(@card)
    else
      render :edit
    end
  end

  def destroy
    @card.destroy
    redirect_to cards_path
  end

  private

  def card_params(*args)
    params.require(:card).permit(*args)
  end

  def set_cards
    # binding.pry
    @card = Card.find(params[:id])
  end
end
