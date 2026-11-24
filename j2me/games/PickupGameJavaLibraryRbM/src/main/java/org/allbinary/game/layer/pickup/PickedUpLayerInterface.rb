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

require "java/lang/JavaOverload"
require "org/allbinary/layer/LayerInterface"

module ::Org; module Allbinary; module Game; module Layer; module Pickup

module PickedUpLayerInterface
    include ::Org::Allbinary::Layer::LayerInterface
    

    def getPickedUpLayerInterfaceFactoryInterface()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :getPickedUpLayerInterfaceFactoryInterface, 0
    

    def setPickedUp()
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :setPickedUp, 0
end

autoload :PickedUpLayerInterfaceFactoryInterface, "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface" unless const_defined?(:PickedUpLayerInterfaceFactoryInterface, false)

end; end; end; end; end

