# -*- encoding: utf-8 -*-
require File.expand_path('../lib/font-ionicons-rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Ricardo Emerson"]
  gem.email         = ["ricardo_emerson@yahoo.com.br"]
  gem.description   = "The best Ionicons gem made for Ruby on Rails and with helpers for better use."
  gem.summary       = "an asset gemification of the ionicons icon font library"
  gem.homepage      = "https://github.com/ricardoemerson/font-ionicons-rails"
  gem.licenses      = ["MIT"]

  gem.files         = Dir["{app,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  gem.test_files    = Dir["test/**/*"]
  gem.name          = "font-ionicons-rails"
  gem.require_paths = ["lib"]
  gem.version       = FontIonicons::Rails::VERSION

  gem.add_dependency "railties", ">= 3.2", "< 5.0"

  gem.add_development_dependency "activesupport"
  gem.add_development_dependency "sass-rails"

  gem.required_ruby_version = '>= 1.9.3'
end
