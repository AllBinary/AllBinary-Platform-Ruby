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
        return defined?(@@max) ? @@max : nil
    end

    def self.max=(value)
        @@max = value
    end
end

require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

class AllBinarySensor
    NULL_ALLBINARY_SENSOR = AllBinarySensor.new()
    @@max = 100
end

