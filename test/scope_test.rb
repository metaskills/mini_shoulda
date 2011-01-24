require 'test_helper'

# TODO: This test should disappear when we no longer have to patch MiniTest's
# Kernel#describe block using our 'mini_shoulda/minitest_describe_patch' file.

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
