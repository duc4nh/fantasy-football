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

require 'rails_helper'

RSpec.describe Player, type: :model do
  describe "Check model relationship" do
    it { should belong_to(:team) }
  end

  describe "Check validation attribute" do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
  end
end
