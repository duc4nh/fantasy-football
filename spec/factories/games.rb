# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  score      :integer
#  match_id   :integer
#  winner_id  :integer
#  loser_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :game do
    score 1
  end
end
