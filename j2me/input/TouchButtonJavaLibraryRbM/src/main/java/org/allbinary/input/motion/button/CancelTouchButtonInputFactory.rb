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


module ::Org; module Allbinary; module Input; module Motion; module Button

class CancelTouchButtonInputFactory
    attr_accessor :cancelInputArray

    def jfields_org_allbinary_input_motion_button_CancelTouchButtonInputFactory
        @cancelInputArray = Array.new(::Org::Allbinary::Game::Input::InputFactory.getInstance().MAX, nil)
    end
    

    def self.getInstance()
        if @@instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            @@instance = CancelTouchButtonInputFactory.new()
        end
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_button_CancelTouchButtonInputFactory
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
            @@instance = ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
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

module ::Org; module Allbinary; module Game; module Input; autoload :InputFactory, "org/allbinary/game/input/InputFactory" unless const_defined?(:InputFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory" unless const_defined?(:BasicTouchInputFactory, false)
autoload :TouchButtonInput, "org/allbinary/input/motion/button/TouchButtonInput" unless const_defined?(:TouchButtonInput, false)

begin
    CancelTouchButtonInputFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

