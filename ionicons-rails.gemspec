# -*- encoding: utf-8 -*-
require File.expand_path('../lib/ionicons-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ricardo Emerson"]
  gem.email         = ["ricardo_emerson@yahoo.com.br"]
  gem.description   = "The premium icon font for Ionic Framework."
  gem.summary       = "an asset gemification of the ionicons icon font library"
  gem.homepage      = "https://github.com/ricardoemerson/ionicons-rails"
  gem.licenses      = ["MIT", "SIL Open Font License"]

  gem.files         = Dir["{app,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  gem.test_files    = Dir["test/**/*"]
  gem.name          = "ionicons-rails"
  gem.require_paths = ["lib"]
  gem.version       = IonIcons::Rails::VERSION

  gem.add_dependency "railties", ">= 3.2", "< 5.0"

  gem.add_development_dependency "activesupport"
  gem.add_development_dependency "sass-rails"

  gem.required_ruby_version = '>= 1.9.3'
end
