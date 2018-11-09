package 'ntp' do
  action :install
end

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'vim-enchanced' do
  action :install
end

file '/etc/motd' do
  content "This server is the property of Roman Kuzmenko\n"
  group 'root'
  owner 'root'
end

service 'ntpd' do
  action [ :enable, :start ]
end
