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
# package org.allbinary.media.graphics.geography.map.topview


class BasicTopViewGeographicMapCellType
    attr_accessor :logUtil, :name, :cost, :types

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @name = nil
        @cost = nil
        @types = nil
    end
    

    def self.createType(name, type, cost)
        types = BasicArrayListS.new(1)
        types.add(type)
        return BasicTopViewGeographicMapCellType.new(name, types, cost)
    end
    

    def initialize(name, types, cost)
        initialize_fields
        size = types.size()
        typeArray = Array.new(size, 0)
        typeAsInteger = nil
        type = 0
        (0...size).each do |index|
            typeAsInteger = (types.get(index))
            type = typeAsInteger.to_i
            if GeographicMapCellTypeFactory.getInstance().getGeographicMapCellTypeArray()[type] == nil
                RaceTrackGeographicMapCellType.new(name, type, cost, 0)
            else
            end
            typeArray[index] = type
        end
        @name = name
        @cost = cost
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
    

    def getTypes()
        return @types
    end
    

    def toString()
        stringMaker = StringMaker.new()
        size = @types.length
        (0...size).each do |index|
            stringMaker.appendint(@types[index]).append(CommonSeps.getInstance().COMMA)
        end
        return stringMaker.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellType"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory"
require "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListS"

