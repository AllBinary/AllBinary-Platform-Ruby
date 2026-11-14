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
        InputFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InputFactory.java_static_fields unless @java_static_fields_started
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
        if name == "InputFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Input, "org/allbinary/game/input/Input"

begin
    InputFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

