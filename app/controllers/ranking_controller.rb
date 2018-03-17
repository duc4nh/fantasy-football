class RankingController < ApplicationController
  def index
    teams = Team.all
    @stats = []

    teams.each do |team|
      matches_played = team.matches.count
      winning_matches = team.winning_matches.count
      @stats << {
        name: team.name,
        winning_games: team.winning_games.count,
        losing_games: team.losing_games.count,
        matches_played: matches_played,
        winning_matches: winning_matches,
        match_winning_percentage: "#{(winning_matches / matches_played.to_f * 100).round(2)} %"
      }
    end
  end
end
