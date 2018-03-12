node['archlinux']['services']['enable'].each do |s|
  service(s) {action :enable}
end
