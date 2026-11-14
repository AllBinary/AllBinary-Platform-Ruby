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


class AllBinarySensorManager
    attr_accessor :ORIENTATION_SENSOR_INPUT, :ORIENTATION_TYPE, :list

    def initialize_fields
        @ORIENTATION_SENSOR_INPUT = "Orientation Sensor Input"
        @ORIENTATION_TYPE = "Orientation Type"
        @list = BasicArrayListD.new()
    end
    

    def self.getInstance()
        if AllBinarySensorManager.instance == NullUtil.getInstance().NULL_OBJECT
            AllBinarySensorManager.instance = AllBinarySensorManager.new()
        end
        return AllBinarySensorManager.instance
    end
    

    def initialize()
        initialize_fields
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
            @@instance = NullUtil.getInstance().NULL_OBJECT
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

autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"

begin
    AllBinarySensorManager.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

