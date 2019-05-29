class AddPlayTimeToBossLogs < ActiveRecord::Migration[5.2]
  def change
  	add_column :boss_logs, :play_time, :integer
  end
end
