node['kvm-demo']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end

template '/root/vmbuilder.nonet' do
  mode '0755'
  owner 'root'
  group 'root'
  source 'vm-builder-cmd.erb'
end
