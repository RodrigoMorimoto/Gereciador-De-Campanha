class CreateVinculos < ActiveRecord::Migration[5.1]
  def change
    create_table :vinculos do |t|

      t.timestamps
    end
  end
end
