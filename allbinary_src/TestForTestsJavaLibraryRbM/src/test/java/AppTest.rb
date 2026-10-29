# Generated Code Do Not Modify
# frozen_string_literal: false


class AppTest
    

    def testAddition()
        Assertions.assertEquals(2, 1 + 1)
    end
    

    def testStringEquality()
        expected = "Hello World!"
        actual = "Hello World!"
        Assertions.assertEquals(expected, actual)
    end
    

    def testBooleanAssertions()
        Assertions.assertTrue(true)
        Assertions.assertFalse(false)
    end
end

require "org/junit/jupiter/api/Assertions"
require "org/junit/jupiter/api/DisplayName"
require "org/junit/jupiter/api/Test"

