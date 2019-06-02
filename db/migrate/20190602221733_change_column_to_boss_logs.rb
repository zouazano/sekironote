class ChangeColumnToBossLogs < ActiveRecord::Migration[5.2]
  def change
  	change_column :boss_logs, :death_count, :integer, default: 0
  end
end
