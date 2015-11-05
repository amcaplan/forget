module Forget
  class Engine < ::Rails::Engine
    isolate_namespace Forget

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
