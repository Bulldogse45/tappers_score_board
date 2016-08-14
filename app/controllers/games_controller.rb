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

    def edit
      @game = Game.new
      render 'new'
    end

    def create
      @game = Game.new(game_params)
      if @game.save
        redirect_to @game
      else
        render 'new'
      end
    end

    def update
      @game = Game.find(params[:id])
      if @game.update(game_params)
        flash.now[:notice] = "Your List was updated!"
        redirect_to @game
      else
        render 'new'
      end
    end

    private

    def game_params
      params.require(:game).permit(:name, :description)
    end
end
