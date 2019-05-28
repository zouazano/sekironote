class CreateBosses < ActiveRecord::Migration[5.2]
  def change
    create_table :bosses do |t|
      t.string :name
      t.string :image_uid
      t.text :info

      t.timestamps
    end
  end
end
