# frozen_string_literal: true

require "zeitwerk"

::Loader = Zeitwerk::Loader.new
::Loader.logger = method(:puts)
::Loader.push_dir(File.join(__dir__, 'system'))
::Loader.push_dir(File.join(__dir__, 'lib'))
::Loader.on_load('Container') do |_foo|
  $LOADED_FEATURES.reject! { |path| path =~ %r{/system/boot/} }
end
::Loader.enable_reloading
::Loader.setup
