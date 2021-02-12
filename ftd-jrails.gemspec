# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jrails/version', __FILE__)

Gem::Specification.new do |s|
  s.name = "ftd-jrails"
  s.version = JRails::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ["Aaron Eisenberger", "Patrick Hurley", "Brent Miller", "Braulio Bhavamitra", "Donncha Redmond"]
  s.email = %q{donncha@fintechdev.net}
  s.homepage = %q{http://github.com/fintechdev/jrails}
  s.summary = %q{RJS and JqueryHelper/JqueryUiHelper with the same API from prototype-rails gem, for Rails 6+}
  s.license = 'MIT'

  s.required_ruby_version = '>= 2.2'

  s.add_runtime_dependency 'activesupport', '>= 6.0.0'
  s.add_runtime_dependency 'actionpack', '>= 6.0.0'

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_path = "lib"
end

