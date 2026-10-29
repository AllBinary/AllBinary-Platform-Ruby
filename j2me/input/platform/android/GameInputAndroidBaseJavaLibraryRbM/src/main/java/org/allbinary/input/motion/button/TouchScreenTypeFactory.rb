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
# package org.allbinary.input.motion.button


class TouchScreenTypeFactory
    

    def self.getInstance()
        return TouchScreenTypeFactory.instance
    end
    

    def update(activity)
        commonStrings = CommonStrings.getInstance()
        touchScreenFactory = TouchScreenFactory.getInstance()
        touchScreenTypesFactory = TouchScreenTypesFactory.getInstance()
        configuration = activity.getResources().getConfiguration()
        touchScreen = configuration.touchscreen
        if touchScreen == Configuration::TOUCHSCREEN_FINGER
            touchScreenFactory.setTouchScreenType(touchScreenTypesFactory.FINGER)
            if !touchScreenFactory.isTouch()
                PreLogUtil.put("Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it", self, commonStrings.PROCESS)
                touchScreenFactory.setTouch(true)
            end
        elsif touchScreen == Configuration::TOUCHSCREEN_STYLUS
            touchScreenFactory.setTouchScreenType(touchScreenTypesFactory.STYLUS)
            if !touchScreenFactory.isTouch()
                PreLogUtil.put("Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it", self, commonStrings.PROCESS)
                touchScreenFactory.setTouch(true)
            end
        elsif touchScreen == Configuration::TOUCHSCREEN_NOTOUCH
            touchScreenFactory.setTouchScreenType(touchScreenTypesFactory.NOTOUCH)
        elsif touchScreen == Configuration::TOUCHSCREEN_UNDEFINED
            touchScreenFactory.setTouchScreenType(touchScreenTypesFactory.UNDEFINED)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "android/app/Activity"
require "android/content/res/Configuration"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/log/PreLogUtil"

class TouchScreenTypeFactory
    @@instance = TouchScreenTypeFactory.new()
end

