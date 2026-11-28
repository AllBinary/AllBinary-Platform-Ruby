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

require "java/lang/JavaOverload"
require "org/allbinary/media/graphics/geography/map/GeographicMapCellPositionBaseFactory"

module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map

class GeographicMapCellPositionFactory < GeographicMapCellPositionBaseFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellPositionFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end

    def initialize
        super()
        jfields_org_allbinary_media_graphics_geography_map_GeographicMapCellPositionFactory
    end
    

    # throws Exception
    def getInstance(geographicMapInterface)
        commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        allBinaryTiledLayer = geographicMapInterface.getAllBinaryTiledLayer()
        geographicMapCellPositionFactoryCanBeNull = @@hashtable.get(allBinaryTiledLayer.getDataId())
        if geographicMapCellPositionFactoryCanBeNull == nil
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Creating GeographicMapCellPositionFactory for TileLayer: ").appendint(((allBinaryTiledLayer.getDataId().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, commonStrings.GET_INSTANCE)
            geographicMapCellPositionFactoryCanBeNull = BasicGeographicMapCellPositionFactory.new(geographicMapInterface)
            @@hashtable.put(allBinaryTiledLayer.getDataId(), geographicMapCellPositionFactoryCanBeNull)
            return geographicMapCellPositionFactoryCanBeNull
        else
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Reusing GeographicMapCellPositionFactory for TileLayer: ").appendint(((allBinaryTiledLayer.getDataId().to_i).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })).to_s, self, commonStrings.GET_INSTANCE)
            return geographicMapCellPositionFactoryCanBeNull
        end
    end
    java_overload :getInstance, 1
    

    def self.getHashtable()
        return @@hashtable
    end

    def self.hashtable()
        GeographicMapCellPositionFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@hashtable) ? @@hashtable : nil
    end

    def self.hashtable=(value)
        GeographicMapCellPositionFactory.java_static_fields unless @java_static_fields_started
        @@hashtable = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GeographicMapCellPositionFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryTiledLayer, "org/allbinary/game/layer/AllBinaryTiledLayer" unless const_defined?(:AllBinaryTiledLayer, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
autoload :BasicGeographicMap, "org/allbinary/media/graphics/geography/map/BasicGeographicMap" unless const_defined?(:BasicGeographicMap, false)
autoload :BasicGeographicMapCellPositionFactory, "org/allbinary/media/graphics/geography/map/BasicGeographicMapCellPositionFactory" unless const_defined?(:BasicGeographicMapCellPositionFactory, false)

begin
    GeographicMapCellPositionFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

