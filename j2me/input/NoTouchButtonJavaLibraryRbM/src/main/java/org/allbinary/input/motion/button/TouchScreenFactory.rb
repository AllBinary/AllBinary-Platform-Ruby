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
    attr_accessor :multiTouch, :touch, :touchScreenType

    def initialize_fields
        @multiTouch = false
        @touch = false
        @touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return TouchScreenFactory::SINGLETON
    end
    

    def isMultiTouch()
        return @multiTouch
    end
    

    def setTouch(touch)
    end
    

    def isTouch()
        return @touch
    end
    

    def getTouchScreenType()
        return @touchScreenType
    end
end

require "org/allbinary/input/motion/button/TouchScreenType"
require "org/allbinary/input/motion/button/TouchScreenTypesFactory"

class TouchScreenFactory
    SINGLETON = TouchScreenFactory.new()
end

