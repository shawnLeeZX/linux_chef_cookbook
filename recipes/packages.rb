# Figure out how to install package group.
# node['archlinux']['package_group']['install'].each do |pkg|
#   pacman_package(pkg) {action :install}
# end

node['archlinux']['packages']['install'].each_pair do |_, group|
  # If the group is a type other than list, then it is conditional
  # installation, skip it, since it would be handled else where specifically.
  if group.class == Array
    group.each do |pkg|
      package(pkg) {action :install}
    end
  end
end

# GPU driver installation
#
# Check the hardware to get GPU vendor.
PCI = node['pci']
# Get the VGA controller vendor
vendor = nil
PCI.each_pair do |_, i|
  if i['vendor_name'].include? 'Intel'
    vendor = 'intel'
  end
  # TODO: include other cases.
end
if not vendor
  raise "Cannot detect ventor, value is #{ventor}."
end

# Install packages and config files.
node['archlinux']['packages']['install']['gpu'][vendor].each do |pkg|
  package(pkg) {action :install}
end
cookbook_file '/etc/profile.d/vdpau.sh' do
  source "#{vendor}/vdpau.sh"
  owner 'root'
  mode '744'
  action :create
end
