# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :team do
    name "MyString"
    trait :with_players do
      players { build_list :player, 2 }
    end
  end
end
