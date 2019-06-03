class AddLapToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :lap, :integer
  end
end
