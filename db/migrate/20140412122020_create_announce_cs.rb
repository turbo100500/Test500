class CreateAnnounceCs < ActiveRecord::Migration
  def change
    create_table :announce_cs do |t|
      t.string :name
      t.string :type
      t.float :square
      t.string :region
      t.string :area
      t.string :city
      t.string :settlement
      t.string :action
      t.float :rent
      t.float :price
      t.string :owner
      t.integer :manager_id

      t.timestamps
    end
  end
end
