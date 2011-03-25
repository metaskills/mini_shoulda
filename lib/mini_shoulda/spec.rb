class MiniTest::Spec < MiniTest::Unit::TestCase
  
  class << self
    alias :setup :before unless defined?(Rails)
    alias :teardown :after unless defined?(Rails)
    alias :should :it
    alias :context :describe
  end
  
  def self.should_eventually(desc)
    it("should eventually #{desc}") { skip("Should eventually #{desc}") }
  end
  
end
