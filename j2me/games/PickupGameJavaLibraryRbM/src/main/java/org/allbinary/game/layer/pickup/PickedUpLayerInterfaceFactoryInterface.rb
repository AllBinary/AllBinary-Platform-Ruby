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


module PickedUpLayerInterfaceFactoryInterface
    

    def getPickedUpLayerType()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getIconLayer()
        return super if defined?(super)
        raise NotImplementedError
    end
    

    def getAnimationInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
end

autoload :Animation, "org/allbinary/animation/Animation"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :PickedUpLayerType, "org/allbinary/game/layer/pickup/PickedUpLayerType"

