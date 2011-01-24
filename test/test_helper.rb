require 'rubygems'
require 'bundler'
Bundler.setup
require 'mini_shoulda'
require 'minitest/autorun'

class MiniShoulda::SpecCase < MiniTest::Spec
  
  class << self
    
    def class_helper?
      true
    end
    
  end
  
  def public_helper?
    true
  end
  
  
  protected
  
  def protected_helper?
    true
  end

end
