module MiniShoulda
  module SpecAdditions
    
    def should(desc)
      it("should #{desc}") { yield }
    end

    # Maybe use skip
    def should_eventually(desc)
      it "should eventually #{desc}"
    end
    
    
  end
end

MiniTest::Spec.extend MiniShoulda::SpecAdditions

