Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['PHOTOG_FACEBOOK_KEY'], ENV['PHOTOG_FACEBOOK_SECRET']
end