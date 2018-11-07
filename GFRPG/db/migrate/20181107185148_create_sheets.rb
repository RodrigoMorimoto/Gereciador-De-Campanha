class CreateSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :sheets do |t|
	  t.string :name
	  t. img_path
	  
      t.timestamps
    end
  end
end
