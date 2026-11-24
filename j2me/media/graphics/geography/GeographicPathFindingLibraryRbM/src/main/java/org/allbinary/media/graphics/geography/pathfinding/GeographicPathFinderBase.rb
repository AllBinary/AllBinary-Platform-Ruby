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
# package org.allbinary.media.graphics.geography.pathfinding


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Pathfinding

class GeographicPathFinderBase
    attr_accessor :commonStrings

    def jfields_org_allbinary_media_graphics_geography_pathfinding_GeographicPathFinderBase
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end

    def initialize
        jfields_org_allbinary_media_graphics_geography_pathfinding_GeographicPathFinderBase
    end
    

    # throws Exception
    def searchTotalPath(startPathFindingNodeList, endPathFindingNodeList, totalPaths)
        raise RuntimeError.new()
    end
    

    # throws Exception
    def searchTotalPathN(startPathFindingNodeList, endPathFindingNodeList, totalPaths, multipassState)
        raise RuntimeError.new()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_GEOGRAPHIC_PATH_FINDER_BASE, GeographicPathFinderBase.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GeographicPathFinderBase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_GEOGRAPHIC_PATH_FINDER_BASE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :MultipassState, "org/allbinary/media/graphics/geography/pathfinding/MultipassState" unless const_defined?(:MultipassState, false)

begin
    GeographicPathFinderBase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

