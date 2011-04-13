# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mini_shoulda/version"

Gem::Specification.new do |s|
  s.name        = 'mini_shoulda'
  s.version     = MiniShoulda::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Ken Collins']
  s.email       = ['ken@metaskills.net']
  s.homepage    = 'http://github.com/metaskills/mini_shoulda'
  s.summary     = 'MiniShoulda - A minimal shoulda DSL built on top of MiniTest::Spec.'
  s.description = 'MiniShoulda - A minimal shoulda DSL built on top of MiniTest::Spec.'
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']
  s.add_dependency('minitest', '~> 2.1.0')
end
