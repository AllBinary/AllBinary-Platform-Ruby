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


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Platform

class BasicPlatormGeographicMapCellType
    attr_accessor :types

    def jfields_org_allbinary_media_graphics_geography_map_platform_BasicPlatormGeographicMapCellType
        @types = nil unless instance_variable_defined?(:@types)
    end
    

    def self.createType(type)
        types = ::Org::Allbinary::Util::BasicArrayListS.new(1)
        types.add(::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(type))
        basicPlatormGeographicMapCellType = BasicPlatormGeographicMapCellType.new(types)
        return basicPlatormGeographicMapCellType
    end
    

    def initialize(types)
        jfields_org_allbinary_media_graphics_geography_map_platform_BasicPlatormGeographicMapCellType
        size = types.size()
        typeArray = (Array.new(size, 0)).tap { |java_array| java_array.instance_variable_set(:@java_component, :I) }
        typeAsInteger = nil
        type = 0
        (0...size).each do |index|
            typeAsInteger = (types.get(index))
            type = typeAsInteger.to_i
            ::Org::Allbinary::Media::Graphics::Geography::Map::GeographicMapCellType.new(type, 0)
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

module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListS, "org/allbinary/util/BasicArrayListS" unless const_defined?(:BasicArrayListS, false); end; end; end

end; end; end; end; end; end; end

