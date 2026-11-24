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

class TouchScreenFactory
    attr_accessor :multiTouch, :touch, :touchScreenType

    def jfields_org_allbinary_input_motion_button_TouchScreenFactory
        @multiTouch = false unless instance_variable_defined?(:@multiTouch)
        @touch = false unless instance_variable_defined?(:@touch)
        @touchScreenType = TouchScreenTypesFactory.getInstance().NOTOUCH
    end
    

    def initialize()
        jfields_org_allbinary_input_motion_button_TouchScreenFactory
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

autoload :TouchScreenType, "org/allbinary/input/motion/button/TouchScreenType" unless const_defined?(:TouchScreenType, false)
autoload :TouchScreenTypesFactory, "org/allbinary/input/motion/button/TouchScreenTypesFactory" unless const_defined?(:TouchScreenTypesFactory, false)

begin
    TouchScreenFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

