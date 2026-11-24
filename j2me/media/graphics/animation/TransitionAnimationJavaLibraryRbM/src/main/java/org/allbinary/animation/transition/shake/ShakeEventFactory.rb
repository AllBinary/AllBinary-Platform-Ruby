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
# package org.allbinary.animation.transition.shake


module ::Org; module Allbinary; module Animation; module Transition; module Shake

class ShakeEventFactory
    attr_accessor :MICRO, :SMALL, :MEDIUM, :LARGE

    def jfields_org_allbinary_animation_transition_shake_ShakeEventFactory
        @MICRO = ShakeEvent.new()
        @SMALL = ShakeEvent.new()
        @MEDIUM = ShakeEvent.new()
        @LARGE = ShakeEvent.new()
    end

    def initialize
        jfields_org_allbinary_animation_transition_shake_ShakeEventFactory
    end
    

    def self.getInstance()
        return ShakeEventFactory.instance
    end
    

    def init()
    end

    def self.instance()
        ShakeEventFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        ShakeEventFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = ShakeEventFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "ShakeEventFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ShakeEvent, "org/allbinary/animation/transition/shake/ShakeEvent" unless const_defined?(:ShakeEvent, false)

begin
    ShakeEventFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

