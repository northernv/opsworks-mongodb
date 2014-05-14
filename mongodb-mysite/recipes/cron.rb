
template 'mongobackup.sh' do
  case node[:platform]
  when 'centos','redhat','fedora','amazon'
    path "/etc/cron.daily/mongobackup.sh"
  when 'debian','ubuntu'
    path "/etc/cron.daily/mongobackup.sh"
  end
  source 'mongobackup.sh.erb'
  owner 'root'
  group 'root'
  mode 0644
end

template 's3cfg.sh' do
  case node[:platform]
  when 'centos','redhat','fedora','amazon'
    path "/root/.s3cfg"
  when 'debian','ubuntu'
    path "/root/.s3cfg"
  end
  source 's3cfg.erb'
  owner 'root'
  group 'root'
  mode 0644
end
