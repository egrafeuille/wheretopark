class CreateParkings < ActiveRecord::Migration
  def change
    create_table :parkings do |t|
      t.string :name
      t.string :address
      t.decimal :latitude,    :precision => 10, :scale =>6
      t.decimal :longitude,   :precision => 10, :scale =>6
      t.decimal :hour_fee,    :precision => 6, :scale =>2
      t.decimal :total_spots, :precision => 6, :scale =>0
      t.decimal :free_spots,  :precision => 6, :scale =>0

      t.timestamps
    end
  end
end
