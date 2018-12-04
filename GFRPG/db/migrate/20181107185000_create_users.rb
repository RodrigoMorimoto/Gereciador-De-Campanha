class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|

      t.string :User_name
      t.string :User_pass
      t.string :User_email
      t.string :User_nickname
      t.string :User_icon
      t.string :User_description

      #t.belongs_to :vinculo, index: true

      t.timestamps
    end
  end
end
