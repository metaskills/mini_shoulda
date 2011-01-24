require 'rubygems'
require 'bundler'
Bundler.setup
require 'mini_shoulda'
require 'minitest/autorun'

class MiniShoulda::SpecCase < MiniTest::Spec
  
  
  protected
  
  def private_method?
    true
  end

end
