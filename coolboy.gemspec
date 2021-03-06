# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','coolboy','version.rb'])
spec = Gem::Specification.new do |s|
  s.name = 'coolboy'
  s.version = Coolboy::VERSION
  s.author = 'Your Name Here'
  s.email = 'your@email.address.com'
  s.homepage = 'http://your.website.com'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','coolboy.rdoc']
  s.rdoc_options << '--title' << 'coolboy' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'coolboy'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_development_dependency('rspec')
  s.add_development_dependency('guard')
  s.add_development_dependency('guard-rspec')
  s.add_development_dependency('pry')
  s.add_runtime_dependency('gli','2.14.0')
end
