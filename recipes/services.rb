node['archlinux']['services']['enable'].each_pair do |_, group|
  group.each do |s|
    service(s) {action :enable}
  end
end

node['archlinux']['services']['disable'].each_pair do |_, group|
  group.each do |s|
    service(s) {action :disable}
  end
end
