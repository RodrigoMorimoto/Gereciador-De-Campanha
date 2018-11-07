class CreateAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :attributes do |t|
	  t.string :attribute_name
	  t.integer :attribute_type
      t.timestamps
    end
  end
end
