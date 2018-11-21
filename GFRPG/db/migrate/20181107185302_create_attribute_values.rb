class CreateAttributeValues < ActiveRecord::Migration[5.1]
  def change
    create_table :attribute_values do |t|
	  t.string :str_attribute_value
	  t.integer :int_attribute_value
	  t.boolean :bool_attribute_value
    t.timestamps
    t.belongs_to :attribute, index: true
	  t.belongs_to :sheet, index: true
    end
  end
end
