class CreateAccessCounts < ActiveRecord::Migration
  def change
    create_table :access_counts do |t|
      t.string :name
      t.date :access_at
      t.integer :cnt

      t.timestamps
    end
  end
end
