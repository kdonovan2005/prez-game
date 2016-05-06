class GamesController < ApplicationController
  before_action :destroy_middle, only: [:new]
  before_action :middle_card, only: [:new]
  before_action :set_games, only: [:show, :edit, :update, :destroy]
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params(:title, :num_players, :skill_lvl, :player_ids, :card_ids))
    @game.assign_cards(params)
    if @game.save
      redirect_to game_path(@game)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @game.update(game_params(:title, :num_players, :skill_lvl, :player_ids, :card_ids))
      redirect_to game_path(@game)
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params(*args)
    # binding.pry
    params.require(:game).permit(*args)
  end

  def set_games
    @game = Game.find(params[:id])
  end

  def middle_card
    Player.create(name: "Middle1", tagline: "I'm in the middle, duh")
    Player.create(name: "Middle2", tagline: "I'm in the middle, duh")
    Player.create(name: "Middle3", tagline: "I'm in the middle, duh")
  end

  def destroy_middle
    Player.all.each do |player|
      player.destroy if player.name.include?("Middle")
    end
  end
end
