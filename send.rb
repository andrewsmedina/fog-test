require 'fog'


connection = Fog::Storage.new({
  :provider                 => 'AWS',
  :aws_access_key_id        => YOUR_AWS_ACCESS_KEY_ID,
  :aws_secret_access_key    => YOUR_AWS_SECRET_ACCESS_KEY
})

directory = connection.directories.create(
  :key    => "fog-demo-#{Time.now.to_i}", # globally unique name
  :public => true
)

file = directory.files.create(
  :key    => 'resume.html',
  :body   => 'ble',
  :public => true
)
