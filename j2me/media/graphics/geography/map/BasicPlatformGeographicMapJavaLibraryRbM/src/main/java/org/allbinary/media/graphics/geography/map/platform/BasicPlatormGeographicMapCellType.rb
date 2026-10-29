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
# package org.allbinary.media.graphics.geography.map.platform


class BasicPlatormGeographicMapCellType
    attr_accessor :types

    def initialize_fields
        @types = nil
    end
    

    def self.createType(type)
        types = BasicArrayListS.new(1)
        types.add(SmallIntegerSingletonFactory.getInstance().getAt(type))
        basicPlatormGeographicMapCellType = BasicPlatormGeographicMapCellType.new(types)
        return basicPlatormGeographicMapCellType
    end
    

    def initialize(types)
        initialize_fields
        size = types.size()
        typeArray = Array.new(size, 0)
        typeAsInteger = nil
        type = 0
        (0...size).each do |index|
            typeAsInteger = (types.get(index))
            type = typeAsInteger.to_i
            GeographicMapCellType.new(type, 0)
            typeArray[index] = type
        end
        @types = typeArray
    end
    

    def isType(type)
        return self.hasType(type.getType())
    end
    

    def hasType(type)
        size = @types.length
        (0...size).each do |index|
            if @types[index] == type
                return true
            end
        end
        return false
    end
end

require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListS"

