# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ApplicationRecord
  has_and_belongs_to_many :matches
  has_many :players
  has_many :winning_games, :class_name => 'Game', :foreign_key => 'winner_id'
  has_many :losing_games, :class_name => 'Game', :foreign_key => 'loser_id'
  
  validates :name, presence: true
  validate :validate_players
  def validate_players
    errors.add(:players, "too many players") if players.size > 2
    errors.add(:players, "no player") if players.size < 1
  end
end
