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
    attr_accessor :logUtil, :SPECIAL_BUTTON_SIX, :SPECIAL_BUTTON_FIVE, :SPECIAL_BUTTON_FOUR, :SPECIAL_BUTTON_THREE, :SPECIAL_BUTTON_TWO, :SPECIAL_BUTTON_ONE, :UP, :LEFT, :RIGHT, :DOWN, :NONE, :initialized, :list

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @SPECIAL_BUTTON_SIX = TouchButtonInput.new(InputFactory.getInstance().MAX - 30, "Button 6")
        @SPECIAL_BUTTON_FIVE = TouchButtonInput.new(InputFactory.getInstance().MAX - 31, "Button 5")
        @SPECIAL_BUTTON_FOUR = TouchButtonInput.new(InputFactory.getInstance().MAX - 32, "Button 4")
        @SPECIAL_BUTTON_THREE = TouchButtonInput.new(InputFactory.getInstance().MAX - 33, "Button 3")
        @SPECIAL_BUTTON_TWO = TouchButtonInput.new(InputFactory.getInstance().MAX - 34, "Button 2")
        @SPECIAL_BUTTON_ONE = TouchButtonInput.new(InputFactory.getInstance().MAX - 35, "Button 1")
        @UP = TouchButtonInput.new(InputFactory.getInstance().MAX - 36, "Up Button")
        @LEFT = TouchButtonInput.new(InputFactory.getInstance().MAX - 37, "Left Button")
        @RIGHT = TouchButtonInput.new(InputFactory.getInstance().MAX - 38, "Right Button")
        @DOWN = TouchButtonInput.new(InputFactory.getInstance().MAX - 39, "Down Button")
        @NONE = TouchButtonInput.new(InputFactory.getInstance().MAX - 40, "No Button")
        @initialized = false
        @list = BasicArrayListD.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        if BasicTouchInputFactory.instance == NullUtil.getInstance().NULL_OBJECT
            BasicTouchInputFactory.instance = BasicTouchInputFactory.new()
        end
        return BasicTouchInputFactory.instance
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
            self.updateAllList(@list, inputToGameKeyMapping)
        end
        end
    end
    

    def updateAll(inputToGameKeyMapping)
        self.updateAllList(self.getList(), inputToGameKeyMapping)
    end
    

    def updateAllList(list, inputToGameKeyMapping)
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START).appendint(list.size()).to_s, self, "updateAll")
        (list.size() - 1).step(0, -(1)) do |index|
            touchButtonInput = list.get(index)
            touchButtonInput.update(inputToGameKeyMapping)
        end
    end
    

    def getList()
        return @list
    end

    def self.instance()
        BasicTouchInputFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicTouchInputFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = NullUtil.getInstance().NULL_OBJECT
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicTouchInputFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :InputFactory, "org/allbinary/game/input/InputFactory"
autoload :InputToGameKeyMapping, "org/allbinary/game/input/mapping/InputToGameKeyMapping"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput"

begin
    BasicTouchInputFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

