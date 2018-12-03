class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|

      t.timestamps
      t.string :Game_name
      t.string :Game_description
      t.datetime :Game_date

      t.belongs_to :mestre, index: true
      t.belongs_to :vinculo, index: true

    end

    
  end
end
