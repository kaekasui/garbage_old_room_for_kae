class AddMiniLabelOptionToUpdatedInformation < ActiveRecord::Migration
  def change
    add_column :updated_informations, :mini_label_option, :string
  end
end
