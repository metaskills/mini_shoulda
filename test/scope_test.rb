require 'test_helper'

class ScopeTest < MiniShoulda::SpecCase
  
  should 'use base instance helpers' do
    assert public_helper?
    assert protected_helper?
  end
  
  should 'use base class helpers and not run this block' do
    refute true, 'should not have run this'
  end unless class_helper?
  
  context 'in another scope' do

    should 'use base instance helpers' do
      assert public_helper?
      assert protected_helper?
    end
    
    context 'use base class helpers and not run this block' do
      refute true, 'should not have run this'
    end unless class_helper?

  end
  
  
end

class DuppedScopeTest < MiniTest::Spec
  
  context('Context A') { }
  
  context('Context B') { }
  
  should 'only show this failure once' do
    flunk "Passed if you only see this once!!!\n" +
          "test_0001_only_show_this_failure_once(DuppedScopeTest)"
  end
  
end