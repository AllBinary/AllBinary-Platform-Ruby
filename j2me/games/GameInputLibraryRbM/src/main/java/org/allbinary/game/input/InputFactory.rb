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
# package org.allbinary.game.input


class InputFactory
    attr_accessor :logUtil, :commonStrings, :KEY_CODE_LABEL, :DEVICE_ID_LABEL, :MAX, :inputIntegerArray, :NO_INPUT

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @KEY_CODE_LABEL = "KeyCode: "
        @DEVICE_ID_LABEL = "DeviceId: "
        @MAX = SmallIntegerSingletonFactory.getInstance().getMin()
        @inputIntegerArray = Array.new(@MAX, nil)
        @NO_INPUT = Input.new(0, @commonStrings.UNKNOWN)
    end
    

    def self.getInstance()
        if InputFactory.instance == NullUtil.getInstance().NULL_OBJECT
            InputFactory.instance = InputFactory.new()
        end
        return InputFactory.instance
    end
    

    def initialize()
        initialize_fields
        size = @inputIntegerArray.length
        (0...size).each do |index|
            @inputIntegerArray[index] = @NO_INPUT
        end
    end
    

    def add(id, input)
        @inputIntegerArray[id] = input
    end
    

    def getInstanceById(id)
        if id < 0
            id = -id
        end
        if id > @inputIntegerArray.length
            @logUtil.putF(StringMaker.new().append("Warning id: ").appendint(id).to_s, self, @commonStrings.GET_INSTANCE)
            return @NO_INPUT
        end
        return @inputIntegerArray[id]
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/game/input/Input"

class InputFactory
    @@instance = NullUtil.getInstance().NULL_OBJECT
end

