Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :developer unless Rails.env.production?
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  provider :facebook, ENV['TEST_APP_ID'], ENV['TEST_APP_SECRET'] unless Rails.env.production?
  provider :facebook, ENV['APP_ID'], ENV['APP_SECRET']
end
