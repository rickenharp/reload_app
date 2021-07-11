# frozen_string_literal: true

# auto_register: false

require 'roda'

class ReloadApp < Roda
  route do |r|
    r.root do
      "Hallo"
    end
  end
end
