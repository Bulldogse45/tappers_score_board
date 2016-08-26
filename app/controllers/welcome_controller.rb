class WelcomeController < ApplicationController

  def index
    @games = Game.all
    @groups = Group.all
    respond_to do |format|
      format.js {render index: "location.reload();" }
      format.html {}
    end
  end

end
