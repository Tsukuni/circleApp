class CreateTripRanks < ActiveRecord::Migration[5.1]
  def change
    create_table :trip_ranks do |t|
      t.string :qestion1
      t.string :qt1_rank1
      t.string :qt1_rank2
      t.string :qt1_rank3
      t.text :content

      t.timestamps
    end
  end
end
