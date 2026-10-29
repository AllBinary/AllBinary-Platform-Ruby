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


class TouchScreenFactory
    attr_accessor :logUtil, :touch, :multiTouch, :multiTouchDistinct, :touchScreenType

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @touch = false
        @multiTouch = false
        @multiTouchDistinct = false
        @touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH
    end
    

    def initialize()
        initialize_fields
        begin
            self.setTouch(true)
            self.setMultiTouch(false)
        rescue StandardError => e
            commonStrings = CommonStrings.getInstance()
            @logUtil.put(commonStrings.EXCEPTION, TouchScreenFactory::SINGLETON, commonStrings.GET_INSTANCE, e)
        end
    end
    

    def self.getInstance()
        return TouchScreenFactory::SINGLETON
    end
    

    def setMultiTouch(multiTouch)
        @multiTouch = multiTouch
    end
    

    def isMultiTouch()
        return @multiTouch
    end
    

    def setTouch(touch)
        @touch = touch
    end
    

    def isTouch()
        return @touch
    end
    

    def setMultiTouchDistinct(multiTouchDistinct)
        @multiTouchDistinct = multiTouchDistinct
    end
    

    def isMultiTouchDistinct()
        return @multiTouchDistinct
    end
    

    def setTouchScreenType(touchScreenType)
        @touchScreenType = touchScreenType
    end
    

    def getTouchScreenType()
        return @touchScreenType
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("TouchScreen: ")
        stringBuffer.appendboolean(self.isTouch())
        stringBuffer.append(" MultiTouch: ")
        stringBuffer.appendboolean(self.isMultiTouch())
        stringBuffer.append(" Distinct MultiTouch: ")
        stringBuffer.appendboolean(self.isMultiTouchDistinct())
        stringBuffer.append(" TouchScreenType: ")
        stringBuffer.append(StringUtil.getInstance().toString(self.getTouchScreenType()))
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/input/motion/button/TouchScreenType"
require "org/allbinary/input/motion/button/TouchScreenTypesFactory"

class TouchScreenFactory
    SINGLETON = TouchScreenFactory.new()
end

