class Blog < Admin::Blog
 
  scope :no_draft, where("draft != true")

end
