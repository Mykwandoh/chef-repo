# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mykwandoh"
client_key               "#{current_dir}/mykwandoh.pem"
validation_client_name	 "throbot-validator"
validation_key		 "#{current_dir}/throbot-validator.pem"
chef_server_url          "https://api.chef.io/organizations/throbot"
cache_type		 'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
