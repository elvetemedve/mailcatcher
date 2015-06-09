# Install MailCatcher service
include_recipe "rbenv::system_install"

rbenv_gem 'mailcatcher' do
  rbenv_version node['rbenv']['global'] if node['rbenv']['global']
  send('version', node['mailcatcher']['version']) if node['mailcatcher']['version']
end

# Create init scripts for MailCatcher daemon.
case node['platform_family']
  when 'rhel'
  template '/etc/init.d/mailcatcher' do
    source 'mailcatcher.init.conf.erb'
    mode 0744
    notifies :restart, 'service[mailcatcher]', :immediately
  end
  service 'mailcatcher' do
    provider Chef::Provider::Service::Init::Redhat
    supports restart: true
    action [:enable, :start]
  end
end
