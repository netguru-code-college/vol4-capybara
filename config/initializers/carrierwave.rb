CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => Rails.application.credentials.aws[:access_key_id],                        # required
    :aws_secret_access_key  => Rails.application.credentials.aws[:secret_access_key],                     # required
    :region                 => 'eu-central-1',                  # optional, defaults to 'us-east-1'
    #:host                   => 's3.example.com',             # optional, defaults to nil
   # :endpoint               => 'https://s3.example.com:8080' # optional, defaults to nil
  }

  config.fog_directory  = 'vol4-capybara'                             # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end

