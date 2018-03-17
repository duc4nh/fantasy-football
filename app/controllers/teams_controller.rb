class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end
  
  def new
    @team = Team.new
  end

  def create
    team = Team.new(params.require(:team).permit(:name))
    player_ids = params[:player_id].uniq.reject{ |c| c.empty? }
    team.players = Player.find(player_ids)

    if team.save
      redirect_to teams_path, notice: 'Successful !'
    else
      redirect_to new_team_path, alert: "Error: #{team.errors.full_messages.join(', ')}"
    end
  end
end
