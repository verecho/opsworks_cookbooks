# Adapted from nginx::stop: https://github.com/aws/opsworks-cookbooks/blob/master/nginx/recipes/stop.rb

include_recipe "opsworks_sidekiq::service"

node[:deploy].each do |application, deploy|

  execute "restart Sidekiq app #{application}" do
    command "sudo monit restart -g sidekiq_#{application}_group"
  end

end
