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
# package org.allbinary.game.ag.layer.pickup.health

require "java/lang/JavaOverload"
require "org/allbinary/layer/AllBinaryLayerCircularPool"

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Pickup; module Health

class HealLayerCircularStaticPool < ::Org::Allbinary::Layer::AllBinaryLayerCircularPool
    

    def initialize(allbinaryLayerFactoryInterface, total)
        super()
        HealLayerCircularStaticPool.superclass.java_super_method(:initAllBinaryLayerCircularPool, 2).bind(self).call(allbinaryLayerFactoryInterface, total)
    end
    

    # throws Exception
    def visit(sourceLayerInterface)
        healLayer = self.getNextInstance()
        healthInterfaceCompositeInterface = sourceLayerInterface
        healthInterface = healthInterfaceCompositeInterface.getHealthInterface()
        healLayer.visit(healthInterface)
    end
    java_overload :visit, 1
end

module ::Org; module Allbinary; module Game; module Health; autoload :HealthInterface, "org/allbinary/game/health/HealthInterface" unless const_defined?(:HealthInterface, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Health; autoload :HealthInterfaceCompositeInterface, "org/allbinary/game/health/HealthInterfaceCompositeInterface" unless const_defined?(:HealthInterfaceCompositeInterface, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerFactoryInterface, "org/allbinary/layer/AllBinaryLayerFactoryInterface" unless const_defined?(:AllBinaryLayerFactoryInterface, false); end; end; end
autoload :HealLayer, "org/allbinary/game/ag/layer/pickup/health/HealLayer" unless const_defined?(:HealLayer, false)

end; end; end; end; end; end; end

