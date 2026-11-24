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


module ::Org; module Allbinary; module Input

class AllBinarySensorManager
    attr_accessor :logUtil, :commonStrings, :ORIENTATION_SENSOR_INPUT, :ORIENTATION_TYPE, :list

    def jfields_org_allbinary_input_AllBinarySensorManager
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
        @ORIENTATION_TYPE = "Orientation Type"
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def self.getInstance()
        if AllBinarySensorManager.instance == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            AllBinarySensorManager.instance = AllBinarySensorManager.new()
        end
        return AllBinarySensorManager.instance
    end
    

    def initialize()
        jfields_org_allbinary_input_AllBinarySensorManager
        begin
            ::Org::Allbinary::Input::Gyro::GyroSensorFactory.init()
            ::Org::Allbinary::Input::Accelerometer::AccelerometerSensorFactory.init()
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.CONSTRUCTOR, e)
        end
    end
    

    def init()
    end
    

    def getSensorNamesList()
        return @list
    end
    

    def shutdown()
    end

    def self.instance()
        AllBinarySensorManager.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AllBinarySensorManager.java_static_fields unless @java_static_fields_started
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
        if name == "AllBinarySensorManager"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Input; module Accelerometer; autoload :AccelerometerSensorFactory, "org/allbinary/input/accelerometer/AccelerometerSensorFactory" unless const_defined?(:AccelerometerSensorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Gyro; autoload :GyroSensorFactory, "org/allbinary/input/gyro/GyroSensorFactory" unless const_defined?(:GyroSensorFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    AllBinarySensorManager.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

