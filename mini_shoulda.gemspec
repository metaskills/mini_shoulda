Gem::Specification.new do |s|
  s.platform = Gem::Platform::RUBY
  s.require_paths = ['lib']
  s.rubygems_version = '1.3.7'
  s.name = 'mini_shoulda'
  s.summary = 'MiniShoulda - A minimal shoulda DSL built on top of MiniTest::Spec.'
  s.description = 'MiniShoulda - A minimal shoulda DSL built on top of MiniTest::Spec.'
  s.homepage = 'http://github.com/metaskills/mini_shoulda'
  s.rdoc_options = ['--charset=UTF-8']
  s.version = '0.1.0'
  s.authors = ['Ken Collins']
  s.email = 'ken@metaskills.net'
  s.files = Dir['CHANGELOG', 'MIT-LICENSE', 'README.rdoc', 'lib/**/*']
  s.add_dependency('minitest', '~> 2.0.2')
end
