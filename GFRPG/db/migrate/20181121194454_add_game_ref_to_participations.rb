class AddGameRefToParticipations < ActiveRecord::Migration[5.1]
  def change
    add_reference :participations, :game, foreign_key: true
  end
end
