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


class CancelTouchButtonInputFactory
    attr_accessor :cancelInputArray

    def initialize_fields
        @cancelInputArray = Array.new(InputFactory.getInstance().MAX, nil)
    end
    

    def self.getInstance()
        if CancelTouchButtonInputFactory.instance == NullUtil.getInstance().NULL_OBJECT
            CancelTouchButtonInputFactory.instance = CancelTouchButtonInputFactory.new()
        end
        return CancelTouchButtonInputFactory.instance
    end
    

    def initialize()
        initialize_fields
        basicTouchInputFactory = BasicTouchInputFactory.getInstance()
        (@cancelInputArray.length - 1).step(0, -(1)) do |index|
            @cancelInputArray[index] = basicTouchInputFactory.NONE
        end
        @cancelInputArray[basicTouchInputFactory.UP.getSourceId()] = basicTouchInputFactory.DOWN
        @cancelInputArray[basicTouchInputFactory.DOWN.getSourceId()] = basicTouchInputFactory.UP
        @cancelInputArray[basicTouchInputFactory.LEFT.getSourceId()] = basicTouchInputFactory.RIGHT
        @cancelInputArray[basicTouchInputFactory.RIGHT.getSourceId()] = basicTouchInputFactory.LEFT
    end
    

    def getCancel(touchButtonInput)
        return @cancelInputArray[touchButtonInput.getSourceId()]
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/InputFactory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/input/motion/button/BasicTouchInputFactory"
require "org/allbinary/input/motion/button/TouchButtonInput"

class CancelTouchButtonInputFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

