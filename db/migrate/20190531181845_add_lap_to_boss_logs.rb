class AddLapToBossLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :boss_logs, :lap, :integer
  end
end
