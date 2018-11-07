class CreateParticipations < ActiveRecord::Migration[5.1]
  def change
    create_table :participations do |t|

      t.timestamps

      t.bool :Is_master
    end
  end
end
