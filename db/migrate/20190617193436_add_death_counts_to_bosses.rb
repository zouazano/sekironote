class AddDeathCountsToBosses < ActiveRecord::Migration[5.2]
  def change
    add_column :bosses, :death_counts, :integer
  end
end
