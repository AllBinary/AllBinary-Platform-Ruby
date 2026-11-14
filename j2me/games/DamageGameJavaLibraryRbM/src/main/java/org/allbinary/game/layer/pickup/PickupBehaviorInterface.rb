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
# package org.allbinary.game.layer.pickup


module PickupBehaviorInterface
    

    # throws Exception
    def doPickup(pickupProcessorInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def doPickupLayer(pickupLayerInterface)
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :PickedUpLayerInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterface"
autoload :PickupProcessorInterface, "org/allbinary/game/layer/pickup/PickupProcessorInterface"

