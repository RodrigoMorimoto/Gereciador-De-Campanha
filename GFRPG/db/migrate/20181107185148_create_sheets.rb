class CreateSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :sheets do |t|

      t.timestamps
    end
  end
end
