class CreateTeamMatchJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_join_table :teams, :matches
  end
end
