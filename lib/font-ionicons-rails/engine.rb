module FontIonicons
  module Rails
    class Engine < ::Rails::Engine
      config.assets.precompile << %w( ionicons.eot ionicons.ttf ionicons.svg ionicons.woff ionicons.woff2 )
    end
  end
end
