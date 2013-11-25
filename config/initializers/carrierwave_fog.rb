CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => ENV['PHOTOG_AWS_KEY'],
    :aws_secret_access_key  => ENV['PHOTOG_AWS_SECRET'],
    :region                 => 'us-west-2',
    :endpoint               => 'https://s3-us-west-2.amazonaws.com'
  }
  config.fog_directory  = "fms-photog/#{Rails.env}"
end