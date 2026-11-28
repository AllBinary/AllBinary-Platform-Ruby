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

class PathFindingNodeCostInfoData
    attr_accessor :MAX_TOTAL_COST, :MAX_NODE_COST

    def jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingNodeCostInfoData
        @MAX_TOTAL_COST = 2147483647
        @MAX_NODE_COST = 2147483647 / 10000
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_media_graphics_geography_pathfinding_PathFindingNodeCostInfoData
    end

    def self.instance()
        PathFindingNodeCostInfoData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PathFindingNodeCostInfoData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PathFindingNodeCostInfoData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PathFindingNodeCostInfoData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    PathFindingNodeCostInfoData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

