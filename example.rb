require_relative 'setup'

Container.finalize!
puts Container.keys.inspect
Loader.reload
Container.finalize!
puts Container.keys.inspect
