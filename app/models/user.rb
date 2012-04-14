class User < ActiveRecord::Base
  has_one :admin_user
  has_many :tweets

  def admin_user?
    Admin::AdminUser.find_by_user_id(self.id).blank? ? false : true
  end

  private

  #---------------------------#
  # self.create_with_omniauth #
  #---------------------------#
  def self.create_with_omniauth( auth )
    user = User.new
    user[:provider] = auth["provider"]
    user[:uid] = auth["uid"]
    
    unless auth["info"].blank?
      if user[:provider] == "facebook"
        user[:name] = auth["info"]["name"]
      else
        user[:screen_name] = auth["info"]["nickname"]
      end
      user[:image] = auth["info"]["image"]
    end
    
    user.save
    
    return user
  end
end
