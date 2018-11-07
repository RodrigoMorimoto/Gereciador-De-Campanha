class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|

      t.timestamps
      t.string :Game_name
      t.string :Game_description
      t.datetime :Game_date
    end
  end
end
