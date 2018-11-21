class CreateSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :sheets do |t|

      t.timestamps
      t.string :Sheet_name
      t.belongs_to :games, index: true
    end
  end
end
