class CreateMestres < ActiveRecord::Migration[5.1]
  def change
    create_table :mestres do |t|
      t.string :name
      t.string :secret

      t.timestamps
    end
  end
end
