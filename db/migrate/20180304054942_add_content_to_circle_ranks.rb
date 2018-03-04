class AddContentToCircleRanks < ActiveRecord::Migration[5.1]
  def change
    add_column :circle_ranks, :content, :text
  end
end
