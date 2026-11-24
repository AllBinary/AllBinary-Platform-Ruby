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


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Topview

class BasicTopViewGeographicMapCellType
    attr_accessor :logUtil, :name, :cost, :types

    def jfields_org_allbinary_media_graphics_geography_map_topview_BasicTopViewGeographicMapCellType
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @name = nil unless instance_variable_defined?(:@name)
        @cost = nil unless instance_variable_defined?(:@cost)
        @types = nil unless instance_variable_defined?(:@types)
    end
    

    def self.createType(name, type, cost)
        types = ::Org::Allbinary::Util::BasicArrayListS.new(1)
        types.add(type)
        return BasicTopViewGeographicMapCellType.new(name, types, cost)
    end
    

    def initialize(name, types, cost)
        jfields_org_allbinary_media_graphics_geography_map_topview_BasicTopViewGeographicMapCellType
        size = types.size()
        typeArray = (Array.new(size, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        typeAsInteger = nil
        type = 0
        (0...size).each do |index|
            typeAsInteger = (types.get(index))
            type = typeAsInteger.to_i
            if ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellTypeFactory.getInstance().getGeographicMapCellTypeArray()[type] == nil
                ::Org::Allbinary::Media::Graphics::Geography::Map::Racetrack::RaceTrackGeographicMapCellType.new(name, type, cost, 0)
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
        stringMaker = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        size = @types.length
        (0...size).each do |index|
            stringMaker.appendint(@types[index]).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA)
        end
        return stringMaker.to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; autoload :RaceTrackGeographicMapCellType, "org/allbinary/media/graphics/geography/map/racetrack/RaceTrackGeographicMapCellType" unless const_defined?(:RaceTrackGeographicMapCellType, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end

end; end; end; end; end; end; end

