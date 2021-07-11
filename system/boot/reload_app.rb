# frozen_string_literal: true

Container.boot(:reload_app) do |container|
  start do
    container.register('reload_app', ReloadApp)
  end
end
