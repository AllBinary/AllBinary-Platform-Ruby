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
# package org.allbinary.input

require "org/allbinary/input/AllBinarySensorListener"

class AllBinarySensor
    include AllBinarySensorListener
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    def init()
    end
    

    # throws Exception
    def update()
    end
    

    def self.setMax(max)
        AllBinarySensor.max = max
    end
    

    def self.getMax()
        return AllBinarySensor.max
    end
    

    def getId()
        return AllBinarySensor.getMax()
    end
    

    def shutdown()
        @logUtil.putF(@commonStrings.START, self, "shutdown")
    end
    

    def onSensorChange()
        ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end

    def self.max()
        AllBinarySensor.java_static_fields unless @java_static_fields_started
        return defined?(@@max) ? @@max : nil
    end

    def self.max=(value)
        AllBinarySensor.java_static_fields unless @java_static_fields_started
        @@max = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        @@max = 100
        begin
            const_set(:NULL_ALLBINARY_SENSOR, AllBinarySensor.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinarySensor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ALLBINARY_SENSOR].include?(name)
        end
        super
    end
end

autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    AllBinarySensor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

