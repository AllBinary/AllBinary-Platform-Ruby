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
        @cancelInputArray[basicTouchInputFactory.UP.getId()] = basicTouchInputFactory.DOWN
        @cancelInputArray[basicTouchInputFactory.DOWN.getId()] = basicTouchInputFactory.UP
        @cancelInputArray[basicTouchInputFactory.LEFT.getId()] = basicTouchInputFactory.RIGHT
        @cancelInputArray[basicTouchInputFactory.RIGHT.getId()] = basicTouchInputFactory.LEFT
    end
    

    def getCancel(touchButtonInput)
        return @cancelInputArray[touchButtonInput.getId()]
    end

    def self.instance()
        CancelTouchButtonInputFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CancelTouchButtonInputFactory.java_static_fields unless @java_static_fields_started
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
        if name == "CancelTouchButtonInputFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :InputFactory, "org/allbinary/game/input/InputFactory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory"
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput"

begin
    CancelTouchButtonInputFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

