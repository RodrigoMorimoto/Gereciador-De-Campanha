class CreateAttributeValues < ActiveRecord::Migration[5.1]
  def change
    create_table :attribute_values do |t|
	  t.string :str_attribute_value
	  t.integer :int_attribute_value
	  t.bool :bool_attribute_value
      t.timestamps
    end
  end
end
