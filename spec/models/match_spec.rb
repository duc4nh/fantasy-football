# == Schema Information
#
# Table name: matches
#
#  id         :integer          not null, primary key
#  winner_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Match, type: :model do
  describe "Check model relationship" do
    it { should have_many(:games) }
    it { should belong_to(:winner) }
    it { should have_and_belong_to_many(:teams) }
  end
end
