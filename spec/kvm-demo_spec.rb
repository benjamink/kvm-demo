require 'chefspec'
require File.expand_path '../spec_helper', __FILE__

describe 'kvm-demo' do

  context 'When including recipes' do
    subject { get_chef_run.converge described_recipe }
    it { should install_package 'libvirt-bin' }
    it { should install_package 'qemu-kvm' }
  end
end
