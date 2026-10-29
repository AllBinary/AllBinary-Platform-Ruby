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
        return defined?(@@hashMap) ? @@hashMap : nil
    end

    def self.hashMap=(value)
        @@hashMap = value
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"

class InputImageType
    @@hashMap = StdUtil.getInstance().createHashMap()
    TYPE_VECTOR = BasicArrayListD.new()
    CAPTURE = InputImageType.new("Capture", 0)
    COMPARISON = InputImageType.new("Comparison", 1)
    MOTION = InputImageType.new("Motion", 2)
end

