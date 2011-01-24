
# I currently have a patch submitted to minitest to allow parent classes to maintain their 
# inhertance chain when describe blocks are used. Please help me get it into core!
# https://github.com/seattlerb/minitest/pull/9

module Kernel
  
  def describe desc, &block
    stack = MiniTest::Spec.describe_stack
    name  = [stack.last, desc].compact.join("::")
    sclas = stack.last || (self.is_a?(Class) && self < MiniTest::Spec ? self : MiniTest::Spec)
    cls   = Class.new(sclas)
    (class << cls; self; end).send(:define_method, :to_s) { name }
    cls.nuke_test_methods!
    stack.push cls
    cls.class_eval(&block)
    stack.pop
    cls
  end
  
end

