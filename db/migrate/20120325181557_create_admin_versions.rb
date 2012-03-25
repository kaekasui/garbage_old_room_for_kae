class CreateAdminVersions < ActiveRecord::Migration
  def change
    create_table :admin_versions do |t|
      t.string :name
      t.boolean :used
      t.boolean :current
      t.timestamp :deleted_at

      t.timestamps
    end
  end
end
