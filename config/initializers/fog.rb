CarrierWave.configure do |config|
                       # required
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AKIAJQSHEBSQYEWQFI6Q',                        # required
    aws_secret_access_key: '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',                        # required
    region:                'ap-northeast-1'                 # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'sugar-man'                          # required
 end
