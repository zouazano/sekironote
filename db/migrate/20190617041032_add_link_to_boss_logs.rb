class AddLinkToBossLogs < ActiveRecord::Migration[5.2]
  def change
  	add_column :boss_logs, :link, :string
  end
end
