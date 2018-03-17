class PlayersController < ApplicationController
  before_action :get_resource, only: [:edit, :update, :destroy]

  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    unless valid_team?
      redirect_to new_player_path, alert: 'Selected team is already full !'
      return
    end

    Player.create(params.require(:player).permit(:first_name, :last_name, :team_id))
    redirect_to players_path, notice: 'Successful !'
  end

  def edit
  end

  def update
    unless valid_team?
      redirect_to edit_player_path(@player), alert: 'Selected team is already full !'
      return
    end
    
    @player.update(params.require(:player).permit(:first_name, :last_name, :team_id))
    redirect_to players_path, notice: 'Successful !'
  end

  def destroy
    @player.destroy
    redirect_to players_path, notice: 'Successful !'
  end

  private

  def get_resource
    @player = Player.find(params[:id])
  end

  def valid_team?
    return true if params[:player][:team_id] == ''
    return false if Team.find(params[:player][:team_id]).players.count >= 2
    true
  end
end
