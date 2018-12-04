class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|

      t.timestamps
      t.string :name
      t.string :description
      t.datetime :date

      t.belongs_to :mestre, index: true
      #t.belongs_to :vinculo, index: true

    end

    
  end
end
