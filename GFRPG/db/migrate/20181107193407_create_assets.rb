class CreateAssets < ActiveRecord::Migration[5.1]
  def change
    create_table :assets do |t|

      t.timestamps

      t.string :Asset_path
    end
  end
end
