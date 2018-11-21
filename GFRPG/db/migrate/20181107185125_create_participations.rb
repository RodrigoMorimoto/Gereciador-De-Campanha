class CreateParticipations < ActiveRecord::Migration[5.1]
  def change
    create_table :participations do |t|

      t.timestamps

      t.boolean :Is_master
      t.belongs_to :games, index: true
    end
  end
end
