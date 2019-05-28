class AddColumnsToBossLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :boss_logs, :death_count, :integer
    add_column :boss_logs, :time, :time
    add_column :boss_logs, :comment, :text
    add_column :boss_logs, :difficulty, :integer
  end
end
