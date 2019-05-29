class RenameTimeColumnToBossLogs < ActiveRecord::Migration[5.2]
  def change
  	rename_column :boss_logs, :time, :play_time
  end
end
