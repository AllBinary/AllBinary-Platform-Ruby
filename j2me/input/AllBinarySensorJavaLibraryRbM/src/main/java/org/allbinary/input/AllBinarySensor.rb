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

require "java/lang/JavaOverload"
require "org/allbinary/input/AllBinarySensorListener"

module ::Org; module Allbinary; module Input

class AllBinarySensor
    include AllBinarySensorListener
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_input_AllBinarySensor
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_input_AllBinarySensor
    end
    

    def init()
    end
    java_overload :init, 0
    

    # throws Exception
    def update()
    end
    java_overload :update, 0
    

    def self.setMax(max)
        AllBinarySensor.max = max
    end
    

    def self.getMax()
        return AllBinarySensor.max
    end
    

    def getId()
        return AllBinarySensor.getMax()
    end
    java_overload :getId, 0
    

    def shutdown()
        @logUtil.putF(@commonStrings.START, self, "shutdown")
    end
    java_overload :shutdown, 0
    

    def onSensorChange()
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(@commonStrings.NOT_IMPLEMENTED, self)
    end
    java_overload :onSensorChange, 0

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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

begin
    AllBinarySensor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

