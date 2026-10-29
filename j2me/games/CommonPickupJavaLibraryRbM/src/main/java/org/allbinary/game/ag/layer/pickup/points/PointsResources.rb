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
# package org.allbinary.game.ag.layer.pickup.points


class PointsResources
    attr_accessor :RESOURCE, :RESOURCE_2, :RESOURCE_3, :RESOURCE_4

    def initialize_fields
        @RESOURCE = "points_drop_20_by_20.png"
        @RESOURCE_2 = "points_2_drop_20_by_20.png"
        @RESOURCE_3 = "points_3_drop_20_by_20.png"
        @RESOURCE_4 = "points_4_drop_20_by_20.png"
    end
    

    def initialize()
        initialize_fields
    end
    

    def self.getInstance()
        return PointsResources::SINGLETON
    end
end

class PointsResources
    SINGLETON = PointsResources.new()
end

