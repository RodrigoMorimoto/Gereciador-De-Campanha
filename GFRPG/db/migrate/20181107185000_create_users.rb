class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :name
      t.string :pass
      t.string :email
      t.string :nickname
      t.string :icon
      t.string :description

      #t.belongs_to :vinculo, index: true

      t.timestamps
    end
  end
end
