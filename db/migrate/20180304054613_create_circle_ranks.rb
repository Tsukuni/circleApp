class CreateCircleRanks < ActiveRecord::Migration[5.1]
  def change
    create_table :circle_ranks do |t|
      t.string :qestion1
      t.string :qestion2
      t.string :qestion3
      t.string :qt1_rank1
      t.string :qt1_rank2
      t.string :qt1_rank3
      t.string :qt2_rank1
      t.string :qt2_rank2
      t.string :qt2_rank3
      t.string :qt3_rank1
      t.string :qt3_rank2
      t.string :qt3_rank3

      t.timestamps
    end
  end
end
