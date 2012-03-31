class Blog < Admin::Blog
  has_many :blog_comments
 
  scope :no_draft, where("draft != true")

  def self.recent_blogs
    self.limit(5)
  end
end
