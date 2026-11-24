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
# package org.allbinary.media.graphics.geography.map


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class GeographicMapCellType
    attr_accessor :logUtil, :type

    def jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellType
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @type = nil unless instance_variable_defined?(:@type)
    end
    

    def initialize(type, reset)
        jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellType
        @type = type
        if type != (-2147483648)
            geographicMapCellTypeFactory = GeographicMapCellTypeFactory.getInstance()
            geographicMapCellTypeArray = geographicMapCellTypeFactory.getGeographicMapCellTypeArray()
            if geographicMapCellTypeArray[type] == nil || reset == 1
                geographicMapCellTypeArray[type] = self
            else
                if reset != -1
                    raise RuntimeError.new()
                end
            end
        end
    end
    

    def getType()
        return @type
    end
    

    def toString()
        return ::Org::Allbinary::Logic::MathPackage::SmallIntegerSingletonFactory.getInstance().getAt(@type).to_s
    end
    alias_method :to_s, :toString

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY, Array.new(0, nil))
            const_set(:NULL_GEOGRAPHIC_MAP_CELL_TYPE, GeographicMapCellType.new((-2147483648), 0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GeographicMapCellType"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY, :NULL_GEOGRAPHIC_MAP_CELL_TYPE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :SmallIntegerSingletonFactory, "org/allbinary/logic/math/SmallIntegerSingletonFactory" unless const_defined?(:SmallIntegerSingletonFactory, false); end; end; end; end
autoload :GeographicMapCellTypeFactory, "org/allbinary/media/graphics/geography/map/GeographicMapCellTypeFactory" unless const_defined?(:GeographicMapCellTypeFactory, false)

begin
    GeographicMapCellType.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

