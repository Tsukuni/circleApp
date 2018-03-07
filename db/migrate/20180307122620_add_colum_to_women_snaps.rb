class AddColumToWomenSnaps < ActiveRecord::Migration[5.1]
  def change
    add_column :women_snaps, :gakubu, :string
    add_column :women_snaps, :grade, :integer
    add_column :women_snaps, :circle, :string
    add_column :women_snaps, :content, :text
  end
end
