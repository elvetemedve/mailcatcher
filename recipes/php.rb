# Publish PHP configuration
template "#{node['php']['ext_conf_dir']}/mailcatcher.ini" do
  source "php/mailcatcher.ini.erb"
  owner "root"
  group "root"
  mode "0644"
  action :create
end