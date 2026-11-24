# Generated Code Do Not Modify
# frozen_string_literal: false


class AppTest
    

    def testAddition()
        ::Org::Junit::Jupiter::Api::Assertions.assertEquals(2, 1 + 1)
    end
    

    def testStringEquality()
        expected = "Hello World!"
        actual = "Hello World!"
        ::Org::Junit::Jupiter::Api::Assertions.assertEquals(expected, actual)
    end
    

    def testBooleanAssertions()
        ::Org::Junit::Jupiter::Api::Assertions.assertTrue(true)
        ::Org::Junit::Jupiter::Api::Assertions.assertFalse(false)
    end
end

module ::Org; module Junit; module Jupiter; module Api; autoload :Assertions, "org/junit/jupiter/api/Assertions" unless const_defined?(:Assertions, false); end; end; end; end
module ::Org; module Junit; module Jupiter; module Api; autoload :DisplayName, "org/junit/jupiter/api/DisplayName" unless const_defined?(:DisplayName, false); end; end; end; end
module ::Org; module Junit; module Jupiter; module Api; autoload :Test, "org/junit/jupiter/api/Test" unless const_defined?(:Test, false); end; end; end; end

