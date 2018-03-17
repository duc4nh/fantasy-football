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

require 'rails_helper'

RSpec.describe Game, type: :model do
  describe "Check model relationship" do
    it { should belong_to(:match) }
    it { should belong_to(:winner) }
    it { should belong_to(:loser) }
  end

  describe "Check validation attribute" do
    it { should validate_numericality_of(:score) }
    it { should_not allow_value(-1).for(:score) }
    it { should_not allow_value(11).for(:score) }
    it { should allow_value(10).for(:score) }
  end
end
