# -*- encoding: utf-8 ; mode: ruby -*-
Gem::Specification.new do |gem|
  gem.name = "jrake"
  gem.version = "0.1.0"
  gem.platform = Gem::Platform::RUBY
  gem.homepage = "https://github.com/fun-ruby/jrake"
  gem.license = 'MIT'
  gem.authors = ["Long On"]
  gem.email = "on.long.on@gmail.com"
  gem.summary = %q{Rake wrapped in a JRuby jar}
  gem.description = %q{jrake executes rake tasks in a Java runtime environment where Ruby isn't available.}
  gem.default_executable = "jrake"
  gem.executables = ["jrake"]
  gem.require_paths = ["lib"]
  gem.files = Dir.glob("{bin}/**/*") + %w(jrake.gemspec README.md)
  gem.add_runtime_dependency(%q<rake>, [">= 10.1.0"])
end
