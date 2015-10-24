# Create a wrapper script to guard the ruby version
template "#{node['mailcatcher']['catchmail_bin']}-#{node['mailcatcher']['ruby_version']}" do
    source "php/catchmail-wrapper.erb"
    owner "root"
    group "root"
    mode "0755"
    action :create
end

# Publish PHP configuration
template "#{node['php']['ext_conf_dir']}/mailcatcher.ini" do
    source "php/mailcatcher.ini.erb"
    owner "root"
    group "root"
    mode "0644"
    action :create
end