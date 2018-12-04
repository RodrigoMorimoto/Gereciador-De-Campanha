class CreateSheetBs < ActiveRecord::Migration[5.1]
  def change
    create_table :sheet_bs do |t|

      t.integer :strength
      t.integer :endurance
      t.integer :agility
      t.integer :intelligence
      t.integer :willpower
      t.integer :personality
      t.integer :perception
      t.integer :luck
      t.integer :hp
      t.string :race
      t.string :name

      t.belongs_to :vinculo, index: true

      t.timestamps
    end
  end
end
