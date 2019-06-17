class ChangeDataDeathCountsToBosses < ActiveRecord::Migration[5.2]
  def change
  	change_column :bosses, :death_counts, :float

  	rename_column :bosses, :death_counts, :average_death_counts
  end
end
