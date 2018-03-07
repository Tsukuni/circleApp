class AddQuestionToCampusRanks < ActiveRecord::Migration[5.1]
  def change
    add_column :campus_ranks, :question, :string
  end
end
