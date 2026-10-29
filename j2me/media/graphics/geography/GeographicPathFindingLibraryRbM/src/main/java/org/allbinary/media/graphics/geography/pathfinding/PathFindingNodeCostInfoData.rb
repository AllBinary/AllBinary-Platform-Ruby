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


class PathFindingNodeCostInfoData
    attr_accessor :MAX_TOTAL_COST, :MAX_NODE_COST

    def initialize_fields
        @MAX_TOTAL_COST = 2147483647
        @MAX_NODE_COST = 2147483647 / 10000
    end
    

    def self.getInstance()
        return PathFindingNodeCostInfoData.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class PathFindingNodeCostInfoData
    @@instance = PathFindingNodeCostInfoData.new()
end

