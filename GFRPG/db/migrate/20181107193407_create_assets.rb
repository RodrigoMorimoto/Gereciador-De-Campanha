class CreateAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :assets do |t|

      t.timestamps

      t.string :Asset_path
      t.belongs_to :games, index: true
    end
  end
end
