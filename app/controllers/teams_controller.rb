class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end
  
  def new
  end

  def create
  end
end
