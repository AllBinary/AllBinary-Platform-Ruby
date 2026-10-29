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

require "org/allbinary/layer/AllBinaryLayerCircularPool"

class PointsLayerCircularStaticPool < AllBinaryLayerCircularPool
    

    def initialize(allbinaryLayerFactoryInterface, total)
        super()
        self.class.superclass.instance_method(:initAllBinaryLayerCircularPool).bind(self).call(allbinaryLayerFactoryInterface, total)
    end
    

    # throws Exception
    def visit(sourceLayerInterface)
        pointsLayer = self.getNextInstance()
        scoreableInterface = sourceLayerInterface
        pointsLayer.visit(scoreableInterface)
    end
end

require "org/allbinary/game/score/ScoreableInterface"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerFactoryInterface"
require "org/allbinary/game/ag/layer/pickup/points/PointsLayer"

