# This is a xmpp handler recipe
# Place it in the "chef_handler/recipes/" directory

include_recipe "chef_handler"

# Install the `xmpp4r` RubyGem during the compile phase
chef_gem "xmpp4r"
chef_gem "chef-handler-xmpp"

chef_handler "Chef::Handler::Xmpphandler" do
  source "#{Gem::Specification.find_by_name('chef-handler-xmpp').lib_dirs_glob}/chef/handler/xmpphandler.rb"
  action :enable
end