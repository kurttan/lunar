#
# Cookbook:: kt_transmission
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe "transmission"

directory '/root/test_dir' do
    owner 'root'
    group 'root'
    action :create
    mode '0775'
end

package "apache2" do
  action :install
end

service "apache2" do
  action [:enable, :start]
end
