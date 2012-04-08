class CreateAdminMailForms < ActiveRecord::Migration
  def change
    create_table :admin_mail_forms do |t|
      t.string :name
      t.string :mail
      t.text :content
      t.string :ip
      t.string :host
      t.boolean :check

      t.timestamps
    end
  end
end
