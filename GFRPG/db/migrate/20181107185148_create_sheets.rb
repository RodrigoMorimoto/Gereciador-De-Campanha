class CreateSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :sheets do |t|
	  t.string :name
	  t. img_path
	  
      t.timestamps

      t.string :Sheet_name
    end
  end
end
