# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.time

require "java/lang/JavaOverload"

module ::Org; module Allbinary; module TimePackage

class TimeTypeTest
    class TestableTimeTypeUtil < TimeTypeUtil
        attr_accessor :hour

        def jfields_org_allbinary_time_TimeTypeTest_TestableTimeTypeUtil
            @hour = nil unless instance_variable_defined?(:@hour)
        end
        

        def initialize(hour)
            super()
            jfields_org_allbinary_time_TimeTypeTest_TestableTimeTypeUtil
            @hour = hour
        end
        

        def getHourOfDay()
            return @hour
        end
        java_overload :getHourOfDay, 0
    end
    

    def self.millisForHourLocal(hour)
        cal = ::Java::Util::Calendar.getInstance()
        cal.set(::Java::Util::Calendar::HOUR_OF_DAY, hour)
        cal.set(::Java::Util::Calendar::MINUTE, 0)
        cal.set(::Java::Util::Calendar::SECOND, 0)
        cal.set(::Java::Util::Calendar::MILLISECOND, 0)
        return cal.getTimeInMillis()
    end
    

    def isNight_returnsTrue_for_hours_less_than_6()
        "/* Otherwise - statement - ForEachStmt */"
    end
    

    def isNight_returnsTrue_for_hours_greater_than_18()
        "/* Otherwise - statement - ForEachStmt */"
    end
    

    def isNight_returnsFalse_for_boundary_hours_6_and_18()
        "/* Otherwise - statement - ForEachStmt */"
    end
    

    def getNightOrDay_returns_expected_label()
        nightUtil = TestableTimeTypeUtil.new(0)
        ::Org::Junit::Jupiter::Api::Assertions.assertEquals(nightUtil.NIGHT, nightUtil.getNightOrDay())
        dayUtil = TestableTimeTypeUtil.new(12)
        ::Org::Junit::Jupiter::Api::Assertions.assertEquals(dayUtil.DAY, dayUtil.getNightOrDay())
    end
    

    def getHourOfDay_long_converts_epoch_to_local_hour()
        util = TimeTypeUtil.new()
        "/* Otherwise - statement - ForEachStmt */"
    end
    

    def isNight_long_expected_ranges()
        util = TimeTypeUtil.new()
        "/* Otherwise - statement - ForEachStmt */"
        "/* Otherwise - statement - ForEachStmt */"
    end
    

    def getNightOrDay_long_consistency()
        util = TimeTypeUtil.new()
        nightMillis = TimeTypeTest.millisForHourLocal(0)
        dayMillis = TimeTypeTest.millisForHourLocal(12)
        ::Org::Junit::Jupiter::Api::Assertions.assertEquals(util.NIGHT, util.getNightOrDay(nightMillis))
        ::Org::Junit::Jupiter::Api::Assertions.assertEquals(util.DAY, util.getNightOrDay(dayMillis))
    end
    

    def boundaries_day_for_long_based_api()
        util = TimeTypeUtil.new()
        "/* Otherwise - statement - ForEachStmt */"
    end
    

    def constants_accessible_and_stable()
        util = TimeTypeUtil.new()
        ::Org::Junit::Jupiter::Api::Assertions.assertEquals("Night", util.NIGHT)
        ::Org::Junit::Jupiter::Api::Assertions.assertEquals("Day", util.DAY)
    end
    

    def getInstance_returns_same_singleton()
        a = TimeTypeUtil.getInstance()
        b = TimeTypeUtil.getInstance()
        ::Org::Junit::Jupiter::Api::Assertions.assertSame(a, b)
    end
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Org; module Junit; module Jupiter; module Api; autoload :Assertions, "org/junit/jupiter/api/Assertions" unless const_defined?(:Assertions, false); end; end; end; end
module ::Org; module Junit; module Jupiter; module Api; autoload :DisplayName, "org/junit/jupiter/api/DisplayName" unless const_defined?(:DisplayName, false); end; end; end; end
module ::Org; module Junit; module Jupiter; module Api; autoload :Test, "org/junit/jupiter/api/Test" unless const_defined?(:Test, false); end; end; end; end

end; end; end

