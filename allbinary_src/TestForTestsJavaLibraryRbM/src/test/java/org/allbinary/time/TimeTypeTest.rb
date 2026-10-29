# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.time


class TimeTypeTest
    class TestableTimeTypeUtil < TimeTypeUtil
        attr_accessor :hour

        def initialize_fields
            @hour = nil
        end
        

        def initialize(hour)
            super()
            initialize_fields
            @hour = hour
        end
        

        def getHourOfDay()
            return @hour
        end
    end
    

    def self.millisForHourLocal(hour)
        cal = Calendar.getInstance()
        cal.set(Calendar::HOUR_OF_DAY, hour)
        cal.set(Calendar::MINUTE, 0)
        cal.set(Calendar::SECOND, 0)
        cal.set(Calendar::MILLISECOND, 0)
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
        Assertions.assertEquals(nightUtil.NIGHT, nightUtil.getNightOrDay())
        dayUtil = TestableTimeTypeUtil.new(12)
        Assertions.assertEquals(dayUtil.DAY, dayUtil.getNightOrDay())
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
        Assertions.assertEquals(util.NIGHT, util.getNightOrDay(nightMillis))
        Assertions.assertEquals(util.DAY, util.getNightOrDay(dayMillis))
    end
    

    def boundaries_day_for_long_based_api()
        util = TimeTypeUtil.new()
        "/* Otherwise - statement - ForEachStmt */"
    end
    

    def constants_accessible_and_stable()
        util = TimeTypeUtil.new()
        Assertions.assertEquals("Night", util.NIGHT)
        Assertions.assertEquals("Day", util.DAY)
    end
    

    def getInstance_returns_same_singleton()
        a = TimeTypeUtil.getInstance()
        b = TimeTypeUtil.getInstance()
        Assertions.assertSame(a, b)
    end
end

require "java/util/Calendar"
require "org/junit/jupiter/api/Assertions"
require "org/junit/jupiter/api/DisplayName"
require "org/junit/jupiter/api/Test"

