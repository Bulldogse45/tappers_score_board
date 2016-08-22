class WelcomeController < ApplicationController

  def index
    @games = Game.all
    @groups = current_user.groups
  end

end
