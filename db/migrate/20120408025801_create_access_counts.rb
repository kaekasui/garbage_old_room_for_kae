class CreateAccessCounts < ActiveRecord::Migration
  def change
    create_table :access_counts do |t|
      t.integer :menu_id
      t.date :access_at
      t.integer :cnt

      t.timestamps
    end
  end
end
