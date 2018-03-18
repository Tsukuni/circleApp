class CreateLifeRankings < ActiveRecord::Migration[5.1]
  def change
    create_table :life_rankings do |t|
      t.string :rank1
      t.string :rank2
      t.string :rank3
      t.string :abordrank1
      t.string :abordrank2
      t.string :abordrank3

      t.timestamps
    end
  end
end
