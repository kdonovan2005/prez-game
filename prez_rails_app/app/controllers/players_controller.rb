class PlayersController < ApplicationController
  before_action :set_players, only: [:show, :edit, :update, :destroy]
  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params(:name, :pic_url, :tagline, :game_id, :tot_wins))
    if @player.save
      redirect_to player_path(@player)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @player.update(player_params(:name, :pic_url, :tagline, :game_id, :tot_wins))
      redirect_to player_path(@player)
    else
      render :edit
    end
  end

  def destroy
    @player.destroy
    redirect_to players_path
  end

  private

  def player_params(*args)
    params.require(:player).permit(*args)
  end

  def set_players
    @player = Player.find(params[:id])
  end
end
