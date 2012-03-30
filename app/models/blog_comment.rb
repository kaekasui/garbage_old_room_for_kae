class BlogComment < ActiveRecord::Base
  belongs_to :blog

  # mixiユーザであるかどうか
  def mixi_user?
    self.mixi
  end 
end
