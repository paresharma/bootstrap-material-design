require 'mdb/version'

module Mdb
  class Engine < ::Rails::Engine
    initializer 'mdb.assets' do |app|
      %w(font img js scss).each do |sub|
        app.config.assets.paths << root.join(sub).to_s
      end
    end
  end
end
