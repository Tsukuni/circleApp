class CreateFashionRanks < ActiveRecord::Migration[5.1]
  def change
    create_table :fashion_ranks do |t|
      t.string :qestion1
      t.string :qestion2
      t.string :men_rank1
      t.string :men_rank2
      t.string :men_rank3
      t.string :women_rank1
      t.string :women_rank2
      t.string :women_rank3
      t.string :qt2_rank1
      t.string :qt2_rank2
      t.string :qt2_rank3
      t.text :content

      t.timestamps
    end
  end
end
