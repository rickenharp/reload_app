# frozen_string_literal: true

require 'bundler/setup'
require_relative 'setup'
require_relative 'system/container'

if ENV['RACK_ENV'] == 'development'
  run lambda { |env|
    ::Loader.reload
    Container['reload_app'].call(env)
  }
else
  Zeitwerk::Loader.eager_load_all
  run Container['reload_app'].freeze.app
end
