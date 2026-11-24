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
# package org.allbinary.game.ag.layer.pickup.life

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerCircularPool"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Pickup; module Life

class LifeLayerCircularStaticPool < ::Org::Allbinary::Layer::AllBinaryLayerCircularPool
    

    def initialize(allbinaryLayerFactoryInterface, total)
        super()
        LifeLayerCircularStaticPool.superclass.java_super_method(:initAllBinaryLayerCircularPool, 2).bind(self).call(allbinaryLayerFactoryInterface, total)
    end
    

    # throws Exception
    def visit(sourceLayerInterface)
        lifeLayer = self.getNextInstance()
        lifeInterfaceCompositeInterface = sourceLayerInterface
        lifeInterface = lifeInterfaceCompositeInterface.getLifeInterface()
        lifeLayer.visit(lifeInterface)
    end
    java_overload :visit, 1
end

module ::Org; module Allbinary; module Game; module Ag; module Life; autoload :Life, "org/allbinary/game/ag/life/Life" unless const_defined?(:Life, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Ag; module Life; autoload :LifeInterfaceCompositeInterface, "org/allbinary/game/ag/life/LifeInterfaceCompositeInterface" unless const_defined?(:LifeInterfaceCompositeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerFactoryInterface, "org/allbinary/layer/AllBinaryLayerFactoryInterface" unless const_defined?(:AllBinaryLayerFactoryInterface, false); end; end; end
autoload :LifeLayer, "org/allbinary/game/ag/layer/pickup/life/LifeLayer" unless const_defined?(:LifeLayer, false)

end; end; end; end; end; end; end

