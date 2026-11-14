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
# package org.allbinary.input.media.image


class InputImageType
    attr_accessor :name, :index

    def initialize_fields
        @name = nil
        @index = nil
    end
    

    def initialize(name, index)
        initialize_fields
        @name = name
        @index = index
        InputImageType::TYPE_VECTOR.add(self)
        InputImageType.hashMap.put(self.getName(), self)
    end
    

    def toString()
        return "ImageType: " + self.getName()
    end
    alias_method :to_s, :toString
    

    def getName()
        return @name
    end
    

    def self.getInstance(imageTypeString)
        return InputImageType.hashMap.get(imageTypeString)
    end
    

    def self.getAllAsVector()
        return InputImageType::TYPE_VECTOR
    end
    

    def getIndex()
        return @index
    end

    def self.hashMap()
        InputImageType.java_static_fields unless @java_static_fields_started
        return defined?(@@hashMap) ? @@hashMap : nil
    end

    def self.hashMap=(value)
        InputImageType.java_static_fields unless @java_static_fields_started
        @@hashMap = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@hashMap = StdUtil.getInstance().createHashMap()
            const_set(:TYPE_VECTOR, BasicArrayListD.new())
            const_set(:CAPTURE, InputImageType.new("Capture", 0))
            const_set(:COMPARISON, InputImageType.new("Comparison", 1))
            const_set(:MOTION, InputImageType.new("Motion", 2))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InputImageType"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:TYPE_VECTOR, :CAPTURE, :COMPARISON, :MOTION].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StdUtil, "org/allbinary/logic/StdUtil"

begin
    InputImageType.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

