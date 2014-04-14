class CreateAnnounceIs < ActiveRecord::Migration
  def change
    create_table :announce_is do |t|
      t.string :name
      t.string :owner
      t.string :region
      t.string :area
      t.string :city
      t.string :settlement
      t.string :status
      t.string :floor_all
      t.string :floor_num
      t.float :price
      t.float :fact_price
      t.float :OB
      t.float :Jil
      t.float :KU
      t.string :action
      t.integer :manager_id

      t.timestamps
    end
  end
end
