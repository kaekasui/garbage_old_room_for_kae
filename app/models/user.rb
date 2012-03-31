class User < ActiveRecord::Base
  has_many :tweets

  private

  #---------------------------#
  # self.create_with_omniauth #
  #---------------------------#
=begin
  def self.create_with_omniauth( auth )
    user = User.new
    user[:provider] = auth["provider"]
    user[:uid] = auth["uid"]
    
    unless auth["info"].blank?
      user[:name] = auth["info"]["name"]
      user[:screen_name] = auth["info"]["nickname"]
      user[:image] = auth["info"]["image"]
    end
    
    user.save
    
    return user
  end
=end
end
