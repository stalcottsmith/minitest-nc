# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "minitest-nc"
  s.version     = "0.0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Tom Bell"]
  s.email       = ["tomb@tomb.io"]
  s.homepage    = "https://github.com/tombell/minitest-nc"
  s.summary     = "MiniTest extension for Mountain Lion's Notification Center"
  s.description = s.summary

  s.rubyforge_project = "minitest-nc"

  s.add_dependency "terminal-notifier", "~> 1.4.2"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
