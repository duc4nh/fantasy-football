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
  pending "add some examples to (or delete) #{__FILE__}"
end
