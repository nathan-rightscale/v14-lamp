#
# Cookbook Name:: v14-lamp
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.
marker 'recipe_start_rightscale' do
  template 'rightscale_audit_entry.erb'
end

Chef::Log.info "Overriding rs-application_php/listen_php to 80"
node.override['rs-application_php']['listen_port'] = 80

include_recipe 'rs-application_php::default'
