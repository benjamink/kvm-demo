require 'chefspec'
require 'berkshelf'


def get_chef_run
  ChefSpec::ChefRunner.new(platform: 'ubuntu', version: '10.04') do |node|
    node.set['cpu'] = { 'total' => 1 }
    node.set['network'] = { 'interfaces' => [] }
  end
end


begin
  vendor_dir = 'vendor/cookbooks'
  RSpec.configure do |config|
    config.before(:all) do
      Berkshelf::ui.mute!
      Berkshelf::Berksfile.from_file('Berksfile').install(path: vendor_dir)
      Berkshelf::ui.unmute!
    end
    config.after(:all) do
      FileUtils.rm_rf vendor_dir
    end
  end
rescue LoadError
end
