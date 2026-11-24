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
# package org.allbinary.android.input.motion


module ::Org; module Allbinary; module Android; module Input; module Motion

class AnalogControllerConfigurationFactory
    attr_accessor :SCALE_FACTOR, :SCALE_VALUE, :available, :analogControllerConfigurationEvent

    def jfields_org_allbinary_android_input_motion_AnalogControllerConfigurationFactory
        @SCALE_FACTOR = ::Org::Allbinary::Logic::MathPackage::ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
        @SCALE_VALUE = ::Org::Allbinary::Logic::MathPackage::ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
        @available = false unless instance_variable_defined?(:@available)
        @analogControllerConfigurationEvent = ::Org::Allbinary::Android::Input::Motion::Event::AnalogControllerConfigurationEvent.new(self)
    end
    

    def self.getInstance()
        return AnalogControllerConfigurationFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_android_input_motion_AnalogControllerConfigurationFactory
    end
    

    def isAvailable()
        return @available
    end
    

    # throws Exception
    def setAvailable(available)
        @available = available
        ::Org::Allbinary::Android::Input::Motion::Event::AnalogControllerConfigurationEventHandler.getInstance().fireEvent(@analogControllerConfigurationEvent)
    end

    def self.instance()
        AnalogControllerConfigurationFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AnalogControllerConfigurationFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AnalogControllerConfigurationFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AnalogControllerConfigurationFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Android; module Input; module Motion; module Event; autoload :AnalogControllerConfigurationEvent, "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent" unless const_defined?(:AnalogControllerConfigurationEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Android; module Input; module Motion; module Event; autoload :AnalogControllerConfigurationEventHandler, "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler" unless const_defined?(:AnalogControllerConfigurationEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :ScaleFactorFactory, "org/allbinary/logic/math/ScaleFactorFactory" unless const_defined?(:ScaleFactorFactory, false); end; end; end; end

begin
    AnalogControllerConfigurationFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

