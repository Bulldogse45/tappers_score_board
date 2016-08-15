class ScoresController < ApplicationController
  def index
      @scores = Score.all
    end

    def show
      @score = Score.find(params[:id])
    end

    def new
      @score = Score.new
      @score.game_id = params[:game_id]
    end

    def edit
      @score = Score.new
      render 'new'
    end

    def create
      @score = Score.new(score_params)
      if @score.save
        redirect_to game_path(@score.game)
      else
        render 'new'
      end
    end

    def update
      @score = Score.find(params[:id])
      if @score.update(score_params)
        flash.now[:notice] = "Your List was updated!"
        redirect_to game_path(@score.game)
      else
        render 'new'
      end
    end

    private

    def score_params
      params.require(:score).permit(:game_id, :user_id, :amount)
    end
end
