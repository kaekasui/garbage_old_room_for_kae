class UpdatedInformation < Admin::UpdatedInformation
  
  scope :no_draft, where("draft != true")
  scope :limit3, limit(3)

end
