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

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])

    if @game.update(games_params)
      redirect_to game_path
    else
      render :edit
    end
  end

  def destroy
    Game.find(params[:id]).destroy
    redirect_to games_path
  end

  private

  def games_params
    params.require(:game).permit(:title, :publisher, :rating, :maximum_players, :solo_option)
  end
end
