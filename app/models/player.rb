# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  team_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ApplicationRecord
  belongs_to :team, optional: true
  
  validates :first_name, :last_name, presence: true

  def team_name
    team.present? ? team.name : nil
  end
end
