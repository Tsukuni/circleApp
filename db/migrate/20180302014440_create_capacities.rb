class CreateCapacities < ActiveRecord::Migration[5.1]
  def change
    create_table :capacities do |t|
      t.string :image
      t.text :context

      t.timestamps
    end
  end
end
