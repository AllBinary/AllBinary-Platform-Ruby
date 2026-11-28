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
# package org.allbinary.media.graphics.geography.map.racetrack.drop


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Racetrack; module Drop

class RaceTrackAdjacentDropLayerFactory
    attr_accessor :list, :basicArrayListUtil

    def jfields_org_allbinary_media_graphics_geography_map_racetrack_drop_RaceTrackAdjacentDropLayerFactory
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @basicArrayListUtil = ::Org::Allbinary::Util::BasicArrayListUtil.getInstance()
    end
    

    def initialize()
        jfields_org_allbinary_media_graphics_geography_map_racetrack_drop_RaceTrackAdjacentDropLayerFactory
    end
    

    def clear()
        @list.clear()
    end
    

    def self.getInstance()
        return DROP_LAYER_FACTORY
    end
    

    def getSize()
        return @list.size()
    end
    

    def getRandomInstance()
        return @basicArrayListUtil.getRandom(@list)
    end
    

    def add(layerInterfaceFactoryInterface)
        @list.add(layerInterfaceFactoryInterface)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:DROP_LAYER_FACTORY, RaceTrackAdjacentDropLayerFactory.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "RaceTrackAdjacentDropLayerFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DROP_LAYER_FACTORY].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListUtil, "org/allbinary/util/BasicArrayListUtil" unless const_defined?(:BasicArrayListUtil, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :LayerInterfaceFactoryInterface, "org/allbinary/layer/LayerInterfaceFactoryInterface" unless const_defined?(:LayerInterfaceFactoryInterface, false); end; end; end

begin
    RaceTrackAdjacentDropLayerFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

