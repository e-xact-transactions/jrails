# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ftd-jrails}
  s.version = "0.11.0"
  s.licenses = ['MIT']

  s.authors = ["Aaron Eisenberger", "Patrick Hurley", "Brent Miller", "Braulio Bhavamitra", "Donncha Redmond"]
  s.date = %q{2014-10-07}
  s.summary = %q{RJS and JqueryHelper/JqueryUiHelper with the same API from prototype-rails gem, for Rails 3.1+}
  s.email = %q{donncha@fintechdev.net}
  s.homepage = %q{http://github.com/fintechdev/jrails}

  s.required_ruby_version = '>= 2.2'
  s.add_runtime_dependency 'activesupport', '>= 3.0.0'
  s.add_runtime_dependency 'actionpack', '>= 3.1.0'

  s.executables = ["jrails"]
  s.default_executable = %q{jrails}
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    "bin/jrails",
  ] + Dir.glob('{assets,lib}/**/*')

  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
end

