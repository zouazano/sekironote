class AddColumnToBossLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :boss_logs, :medicine_count, :integer

    add_column :boss_logs, :item, :string
  end
end
