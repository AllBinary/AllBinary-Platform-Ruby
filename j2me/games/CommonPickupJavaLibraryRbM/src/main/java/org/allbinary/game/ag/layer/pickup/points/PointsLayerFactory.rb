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

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerFactoryInterface"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Pickup; module Points

class PointsLayerFactory
    include ::Org::Allbinary::Layer::AllBinaryLayerFactoryInterface
    attr_accessor :points

    def jfields_org_allbinary_game_ag_layer_pickup_points_PointsLayerFactory
        @points = nil unless instance_variable_defined?(:@points)
    end
    

    def initialize(points)
        jfields_org_allbinary_game_ag_layer_pickup_points_PointsLayerFactory
        @points = points
    end
    

    # throws Exception
    def getInstance()
        return PointsLayer.new(@points)
    end
    java_overload :getInstance, 0
end

module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
autoload :PointsLayer, "org/allbinary/game/ag/layer/pickup/points/PointsLayer" unless const_defined?(:PointsLayer, false)

end; end; end; end; end; end; end

