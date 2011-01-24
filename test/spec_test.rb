require 'test_helper'

class SpecTest < MiniShoulda::SpecCase
  
  before do
    @level0 = 'level0'
  end
  
  it 'should keep it blocks working' do
    assert true
  end
  
  should 'add should blocks' do
    assert true
  end
  
  should_eventually 'is working!' do
    refute true, 'should_eventually is not working if this test fails'
  end
  
  describe 'with new scope' do
    
    it 'should keep it blocks working' do
      assert true
    end
    
    should 'add should blocks' do
      assert true
    end
    
    should 'get outter before' do
      assert @level0
      assert_equal 'level0', @level0
    end
    
  end
  
  context 'with context scope' do

    setup do
      @object = Object.new
    end

    should 'add should blocks' do
      assert true
    end
    
    should 'get objects from setup' do
      assert @object
      assert_instance_of Object, @object
    end

  end
  
  
  
end

