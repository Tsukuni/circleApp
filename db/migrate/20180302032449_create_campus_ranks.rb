class CreateCampusRanks < ActiveRecord::Migration[5.1]
  def change
    create_table :campus_ranks do |t|
      t.string :rank1
      t.string :rank2
      t.string :rank3

      t.timestamps
    end
  end
end
