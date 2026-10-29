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

require "java/lang/Object"

class BasicTouchInputFactory
    attr_accessor :logUtil, :SPECIAL_BUTTON_SEVEN_TESTING_ONLY, :SPECIAL_BUTTON_EIGHT_TESTING_ONLY, :SPECIAL_BUTTON_SIX, :SPECIAL_BUTTON_FIVE, :SPECIAL_BUTTON_FOUR, :SPECIAL_BUTTON_THREE, :SPECIAL_BUTTON_TWO, :SPECIAL_BUTTON_ONE, :UP, :LEFT, :RIGHT, :DOWN, :NONE, :initialized, :list

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @SPECIAL_BUTTON_SEVEN_TESTING_ONLY = nil
        @SPECIAL_BUTTON_EIGHT_TESTING_ONLY = nil
        @SPECIAL_BUTTON_SIX = nil
        @SPECIAL_BUTTON_FIVE = nil
        @SPECIAL_BUTTON_FOUR = nil
        @SPECIAL_BUTTON_THREE = nil
        @SPECIAL_BUTTON_TWO = nil
        @SPECIAL_BUTTON_ONE = nil
        @UP = nil
        @LEFT = nil
        @RIGHT = nil
        @DOWN = nil
        @NONE = nil
        @initialized = false
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        if BasicTouchInputFactory.instance == NullUtil.getInstance().NULL_OBJECT
            BasicTouchInputFactory.instance = BasicTouchInputFactory.new()
        end
        return BasicTouchInputFactory.instance
    end
    

    def initialize()
        initialize_fields
        _MAX = InputFactory.getInstance().MAX
        @SPECIAL_BUTTON_SEVEN_TESTING_ONLY = TouchButtonInput.new(_MAX - 41, "Button 7 - Testing Only May Cross Over Key Values")
        @SPECIAL_BUTTON_EIGHT_TESTING_ONLY = TouchButtonInput.new(_MAX - 42, "Button 8 - Testing Only May Cross Over Key Values")
        @SPECIAL_BUTTON_SIX = TouchButtonInput.new(_MAX - 30, "Button 6")
        @SPECIAL_BUTTON_FIVE = TouchButtonInput.new(_MAX - 31, "Button 5")
        @SPECIAL_BUTTON_FOUR = TouchButtonInput.new(_MAX - 32, "Button 4")
        @SPECIAL_BUTTON_THREE = TouchButtonInput.new(_MAX - 33, "Button 3")
        @SPECIAL_BUTTON_TWO = TouchButtonInput.new(_MAX - 34, "Button 2")
        @SPECIAL_BUTTON_ONE = TouchButtonInput.new(_MAX - 35, "Button 1")
        @UP = TouchButtonInput.new(_MAX - 36, "Up Button")
        @LEFT = TouchButtonInput.new(_MAX - 37, "Left Button")
        @RIGHT = TouchButtonInput.new(_MAX - 38, "Right Button")
        @DOWN = TouchButtonInput.new(_MAX - 39, "Down Button")
        @NONE = TouchButtonInput.new(_MAX - 40, "No Button")
    end
    

    def init(inputToGameKeyMapping)
        java_monitor.synchronize do
        if !@initialized
            @initialized = true
            @list.add(@UP)
            @list.add(@LEFT)
            @list.add(@RIGHT)
            @list.add(@DOWN)
            @list.add(@SPECIAL_BUTTON_TWO)
            @list.add(@SPECIAL_BUTTON_FOUR)
            @list.add(@SPECIAL_BUTTON_THREE)
            @list.add(@SPECIAL_BUTTON_ONE)
            @list.add(@SPECIAL_BUTTON_FIVE)
            @list.add(@SPECIAL_BUTTON_SIX)
            @list.add(@SPECIAL_BUTTON_SIX)
            @list.add(@SPECIAL_BUTTON_SEVEN_TESTING_ONLY)
            @list.add(@SPECIAL_BUTTON_EIGHT_TESTING_ONLY)
            self.updateAllFromList(@list, inputToGameKeyMapping)
        end
        end
    end
    

    def updateAll(inputToGameKeyMapping)
        self.updateAllFromList(@list, inputToGameKeyMapping)
    end
    

    def updateAllFromList(list, inputToGameKeyMapping)
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).appendint(list.size()).to_s, self, "updateAll")
        touchButtonInput = nil
        (list.size() - 1).step(0, -(1)) do |index|
            touchButtonInput = list.objectArray[index]
            touchButtonInput.update(inputToGameKeyMapping)
        end
    end
    

    def getList()
        return @list
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/input/InputFactory"
require "org/allbinary/game/input/mapping/InputToGameKeyMapping"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/input/motion/button/TouchButtonInput"

class BasicTouchInputFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

