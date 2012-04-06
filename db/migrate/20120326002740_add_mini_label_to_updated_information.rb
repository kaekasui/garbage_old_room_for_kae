class AddMiniLabelToUpdatedInformation < ActiveRecord::Migration
  def change
    add_column :updated_informations, :mini_label, :string
  end
end
