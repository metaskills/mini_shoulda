require 'ruby-debug'; Debugger.start
class MiniTest::Spec < MiniTest::Unit::TestCase
  
  class << self
    unless defined? Rails
      alias :setup :before
      alias :teardown :after
    end
    alias :should :it
    alias :context :describe
  end
  
  def self.should_eventually(desc)
    it("should eventually #{desc}") { skip("Should eventually #{desc}") }
  end
  
end
