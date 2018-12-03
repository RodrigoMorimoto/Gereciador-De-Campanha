class CreateSheetBs < ActiveRecord::Migration[5.1]
  def change
    create_table :sheet_bs do |t|

      t.belongs_to :vinculo, index: true

      t.timestamps
    end
  end
end
