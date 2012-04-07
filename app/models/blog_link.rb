class BlogLink < Admin::BlogLink
  scope :no_draft, where("draft != true")

end
