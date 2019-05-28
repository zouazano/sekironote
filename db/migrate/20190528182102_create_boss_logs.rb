class CreateBossLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :boss_logs do |t|
      t.references :user, foreign_key: true
      t.references :boss, foreign_key: true

      t.timestamps
    end
  end
end
