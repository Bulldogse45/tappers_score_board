class WelcomeController < ApplicationController

  def index
    @games = Game.all
    @groups = Group.all
  end

end
