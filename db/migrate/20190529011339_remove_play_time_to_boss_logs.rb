class RemovePlayTimeToBossLogs < ActiveRecord::Migration[5.2]
  def change
  	remove_column :boss_logs, :play_time, :time
  end
end
