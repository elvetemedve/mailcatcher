# Install MailCatcher service
package 'sqlite-devel'

if node['mailcatcher']['install_method'] == 'rbenv'
  include_recipe 'rbenv'
  include_recipe 'rbenv::ruby_build'

  rbenv_ruby node['mailcatcher']['ruby_version']

  rbenv_gem 'mailcatcher' do
    ruby_version node['mailcatcher']['ruby_version']
    send('version', node['mailcatcher']['version']) if node['mailcatcher']['version']
  end
else
  gem_package 'mailcatcher' do
    send('version', node['mailcatcher']['version']) if node['mailcatcher']['version']
  end
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
