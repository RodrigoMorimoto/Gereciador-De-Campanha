class CreateSheets < ActiveRecord::Migration[5.1]
  def change
    create_table :sheets do |t|

      t.timestamps
      t.integer :strength
      t.integer :sheet_dextery 
      t.integer :constitution
      t.integer :intelligence
      t.integer :wisdom
      t.integer :charisma
      t.integer :armorclass
      t.integer :maxhp
      t.integer :temphp
      t.string :name
      t.string :race
      t.integer :level
      t.belongs_to :vinculo, index: true
      
    end
  end
end
