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

require "org/allbinary/layer/AllBinaryLayerCircularPool"

class HealLayerCircularStaticPool < AllBinaryLayerCircularPool
    

    def initialize(allbinaryLayerFactoryInterface, total)
        super()
        HealLayerCircularStaticPool.superclass.instance_method(:initAllBinaryLayerCircularPool).bind(self).call(allbinaryLayerFactoryInterface, total)
    end
    

    # throws Exception
    def visit(sourceLayerInterface)
        healLayer = self.getNextInstance()
        healthInterfaceCompositeInterface = sourceLayerInterface
        healthInterface = healthInterfaceCompositeInterface.getHealthInterface()
        healLayer.visit(healthInterface)
    end
end

autoload :HealthInterface, "org/allbinary/game/health/HealthInterface"
autoload :HealthInterfaceCompositeInterface, "org/allbinary/game/health/HealthInterfaceCompositeInterface"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :AllBinaryLayerFactoryInterface, "org/allbinary/layer/AllBinaryLayerFactoryInterface"
autoload :HealLayer, "org/allbinary/game/ag/layer/pickup/health/HealLayer"

