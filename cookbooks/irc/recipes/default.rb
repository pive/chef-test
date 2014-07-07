#
# Cookbook Name:: irc
# Recipe:: Default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user "tdi" do
	action :create;
	comment "Test driven infrastructure";
	home "/home/tdi";
	supports :manage_home => true;
end

package "irssi" do
	action :install;
end

directory "/home/tdi/.irssi" do
	owner "tdi";
	group "tdi";
	mode 00755;
	action :create;
end

cookbook_file "/home/tdi/.irssi/config" do
	source "irssi-config";
	owner "tdi";
	group "tdi";
end
