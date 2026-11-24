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
require "org/allbinary/layer/AllBinaryLayerCircularPool"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Pickup; module Points

class PointsLayerCircularStaticPool < ::Org::Allbinary::Layer::AllBinaryLayerCircularPool
    

    def initialize(allbinaryLayerFactoryInterface, total)
        super()
        PointsLayerCircularStaticPool.superclass.java_super_method(:initAllBinaryLayerCircularPool, 2).bind(self).call(allbinaryLayerFactoryInterface, total)
    end
    

    # throws Exception
    def visit(sourceLayerInterface)
        pointsLayer = self.getNextInstance()
        scoreableInterface = sourceLayerInterface
        pointsLayer.visit(scoreableInterface)
    end
    java_overload :visit, 1
end

module ::Org; module Allbinary; module Game; module Score; autoload :ScoreableInterface, "org/allbinary/game/score/ScoreableInterface" unless const_defined?(:ScoreableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerFactoryInterface, "org/allbinary/layer/AllBinaryLayerFactoryInterface" unless const_defined?(:AllBinaryLayerFactoryInterface, false); end; end; end
autoload :PointsLayer, "org/allbinary/game/ag/layer/pickup/points/PointsLayer" unless const_defined?(:PointsLayer, false)

end; end; end; end; end; end; end

