class AddDoneToBossLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :boss_logs, :done, :boolean, default: false, null: false
  end
end
