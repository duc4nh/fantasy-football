# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Match < ApplicationRecord
  has_and_belongs_to_many :teams
  has_many :games
  
  validate :validate_games
  def validate_games
    errors.add(:games, "too many games") if games.size > 3
    errors.add(:games, "too few games") if games.size < 2
  end

  validate :validate_teams
  def validate_teams
    errors.add(:teams, "match is between 2 teams") if teams.size != 2
  end
end
