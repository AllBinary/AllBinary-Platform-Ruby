#
# AllBinary Open License Version 1
# Copyright (c) 2011 AllBinary
# 
# By agreeing to this license you and any business entity you represent are
# legally bound to the AllBinary Open License Version 1 legal agreement.
# 
# You may obtain the AllBinary Open License Version 1 legal agreement from
# AllBinary or the root directory of AllBinary's AllBinary Platform repository.
# 
# Created By: Travis Berthelot
#  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.android.api5

require "org/allbinary/android/api1/ActivityFractureUtilAPI1"

class ActivityFractureUtilAPI5 < ActivityFractureUtilAPI1
    attr_accessor :FEATURE_TOUCHSCREEN_MULTITOUCH, :FEATURE_TOUCHSCREEN, :FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT

    def initialize_fields
        @FEATURE_TOUCHSCREEN_MULTITOUCH = "android.hardware.touchscreen.multitouch"
        @FEATURE_TOUCHSCREEN = "android.hardware.touchscreen"
        @FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT = "android.hardware.touchscreen.multitouch.distinct"
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return ActivityFractureUtilAPI5.instance5
    end
    

    def process(activity)
        touchScreenFactory = TouchScreenFactory.getInstance()
        touchScreenTypeFactory = TouchScreenTypeFactory.getInstance()
        touchScreenFactory.setTouch(self.isTouch(activity))
        touchScreenFactory.setMultiTouch(self.isMultiTouch(activity))
        touchScreenFactory.setMultiTouchDistinct(self.isMultiTouchDistinct(activity))
        touchScreenTypeFactory.update(activity)
        commonStrings = CommonStrings.getInstance()
        PreLogUtil.put(touchScreenFactory.to_s, self, commonStrings.PROCESS)
    end
    

    def isTouch(activity)
        return self.isFeature(activity, @FEATURE_TOUCHSCREEN)
    end
    

    def isMultiTouch(activity)
        return self.isFeature(activity, @FEATURE_TOUCHSCREEN_MULTITOUCH)
    end
    

    def isMultiTouchDistinct(activity)
        return self.isFeature(activity, @FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT)
    end
    

    def isFeature(activity, property)
        return activity.getPackageManager().hasSystemFeature(property)
    end

    def self.instance5()
        return defined?(@@instance5) ? @@instance5 : nil
    end

    def self.instance5=(value)
        @@instance5 = value
    end
end

require "android/app/Activity"
require "org/allbinary/input/motion/button/TouchScreenTypeFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/input/motion/button/TouchScreenFactory"

class ActivityFractureUtilAPI5
    @@instance5 = ActivityFractureUtilAPI5.new()
end

