class CreateVinculos < ActiveRecord::Migration[5.1]
  def change
    create_table :vinculos do |t|
      t.belongs_to :users
	    t.belongs_to :games
      t.timestamps
    end
  end
end
