# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Team, type: :model do
  describe "Check model relationship" do
    it { should have_and_belong_to_many(:matches) }
    it { should have_many(:players) }
    it { should have_many(:winning_games) }
    it { should have_many(:losing_games) }
    it { should have_many(:winning_matches) }
  end

  describe "Check validation attribute" do
    it { should validate_presence_of(:name) }
  end
end
