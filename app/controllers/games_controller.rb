class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def show
    @game = Game.find(params[:id])
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(games_params)

    if @game.save
      redirect_to games_path
    else
      render :new
    end
  end

  def update

  end

  private

  def games_params
    params.require(:game).permit(:title, :publisher, :rating, :maximum_players, :solo_option)
  end
end
