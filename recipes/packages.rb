# Figure out how to install package group.
# node['archlinux']['package_group']['install'].each do |pkg|
#   pacman_package(pkg) {action :install}
# end

node['archlinux']['packages']['install'].each_pair do |_, group|
  puts group
  group.each do |pkg|
    package(pkg) {action :install}
  end
end
