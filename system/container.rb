# frozen_string_literal: true

require 'dry/system/container'
require 'dry/system/loader/autoloading'

class Container < Dry::System::Container
  configure do |config|
    config.root = File.join(__dir__, '..')

    config.component_dirs.loader = Dry::System::Loader::Autoloading
    config.component_dirs.add_to_load_path = false

    config.component_dirs.add 'lib' do |dir|
      # ...
    end
  end
end
