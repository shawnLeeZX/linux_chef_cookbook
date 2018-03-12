node['super_users']['name'].each do |u|
  if not node['etc']['passwd'][u]
    # Create the user
    # TODO: write this part
  end

  HOME = "/home/#{u}"

  # Install customization files
  node['super_users']['config'].each do |t|
    if t['type'] == :file
      cookbook_file "#{HOME}/#{t['name']}" do
        source t['name']
        owner u
        group 'user'
        action :create
      end
    elsif t['type'] == :git
      git "#{HOME}/#{t['name']}" do
        repository t['url']
        reference 'master'
        user u
        group 'user'
        action :sync
      end
    end
  end
end
