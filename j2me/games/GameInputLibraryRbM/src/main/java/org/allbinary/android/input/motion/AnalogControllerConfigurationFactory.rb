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


class AnalogControllerConfigurationFactory
    attr_accessor :SCALE_FACTOR, :SCALE_VALUE, :available, :analogControllerConfigurationEvent

    def initialize_fields
        @SCALE_FACTOR = ScaleFactorFactory.getInstance().DEFAULT_SCALE_FACTOR
        @SCALE_VALUE = ScaleFactorFactory.getInstance().DEFAULT_SCALE_VALUE
        @available = false
        @analogControllerConfigurationEvent = AnalogControllerConfigurationEvent.new(self)
    end
    

    def self.getInstance()
        return AnalogControllerConfigurationFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    def isAvailable()
        return @available
    end
    

    # throws Exception
    def setAvailable(available)
        @available = available
        AnalogControllerConfigurationEventHandler.getInstance().fireEvent(@analogControllerConfigurationEvent)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent"
require "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler"
require "org/allbinary/logic/math/ScaleFactorFactory"

class AnalogControllerConfigurationFactory
    @@instance = AnalogControllerConfigurationFactory.new()
end

