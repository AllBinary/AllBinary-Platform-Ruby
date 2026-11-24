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

class GeographicMapCellTypeFactory
    attr_accessor :logUtil, :geographicMapCellTypeArray

    def jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellTypeFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @geographicMapCellTypeArray = Array.new(512, nil)
    end

    def initialize
        jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellTypeFactory
    end
    

    def self.getInstance()
        return GeographicMapCellTypeFactory.instance
    end
    

    def get(type)
        return @geographicMapCellTypeArray[type]
    end
    

    def getGeographicMapCellTypeArray()
        return @geographicMapCellTypeArray
    end
    

    def getStartType()
        raise RuntimeError.new()
    end
    

    def getEndType()
        raise RuntimeError.new()
    end
    

    def getEmptyType()
        raise RuntimeError.new()
    end
    

    def isPath(cellType)
        raise RuntimeError.new()
    end

    def self.instance()
        GeographicMapCellTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GeographicMapCellTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GeographicMapCellTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GeographicMapCellTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
autoload :GeographicMapCellType, "org/allbinary/media/graphics/geography/map/GeographicMapCellType" unless const_defined?(:GeographicMapCellType, false)

begin
    GeographicMapCellTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

