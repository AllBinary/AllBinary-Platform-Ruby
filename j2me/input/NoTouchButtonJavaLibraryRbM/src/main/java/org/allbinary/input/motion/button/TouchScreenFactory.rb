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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, TouchScreenFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TouchScreenFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

autoload :TouchScreenType, "org/allbinary/input/motion/button/TouchScreenType"
autoload :TouchScreenTypesFactory, "org/allbinary/input/motion/button/TouchScreenTypesFactory"

begin
    TouchScreenFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

