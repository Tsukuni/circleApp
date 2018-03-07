class AddColumToMenSnaps < ActiveRecord::Migration[5.1]
  def change
    add_column :men_snaps, :gakubu, :string
    add_column :men_snaps, :grade, :integer
    add_column :men_snaps, :circle, :string
    add_column :men_snaps, :content, :text
  end
end
