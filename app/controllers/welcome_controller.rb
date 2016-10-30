class WelcomeController < ApplicationController

  def index
    @games = Game.all.first(6)
    current_user ? @groups = current_user.groups : @groups = Group.all
  end

end
