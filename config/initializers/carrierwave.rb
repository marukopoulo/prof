CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    #:aws_access_key_id  =>  'AKIAJRQZVVA4QSIV5Z4A', 
    #:aws_secret_access_key  => '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',
    :aws_access_key_id  =>  ENV['AWS'], 
    :aws_secret_access_key  => ENV['AWSPASS'],

    :region                 => 'ap-northeast-1'
  }

if Rails.env.development?
config.fog_directory = 'prof-imagse' 
else
config.fog_directory = 'prof-images' 
config.cache_dir = "#{Rails.root}/tmp/uploads" #for Heroku
end

end