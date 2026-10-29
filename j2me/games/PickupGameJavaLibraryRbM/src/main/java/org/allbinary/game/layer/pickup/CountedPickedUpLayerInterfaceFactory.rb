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

require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory"

class CountedPickedUpLayerInterfaceFactory < PickedUpLayerInterfaceFactory
    include CountedPickedUpLayerInterfaceFactoryInterface
    attr_accessor :id

    def initialize_fields
        @id = nil
    end
    

    def initialize(pickeUpLayerType, iconLayer, animationInterface)
        super(pickeUpLayerType, iconLayer, animationInterface)
        initialize_fields
        list = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList()
        @id = list.size()
        list.add(self)
    end
    

    # throws Exception
    def getNextInstance(hashtable, x, y, z)
        raise StandardError.new(CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    

    def getTotal()
        return -1
    end
    

    def getId()
        return @id
    end
end

require "org/allbinary/animation/Animation"
require "org/allbinary/animation/NullAnimationFactory"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool"
require "org/allbinary/game/layer/pickup/IconLayer"
require "org/allbinary/game/layer/pickup/PickedUpLayerType"
require "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory"

class CountedPickedUpLayerInterfaceFactory
    NULL_COUNTED_PICKUP_LAYER_FACTORY = CountedPickedUpLayerInterfaceFactory.new(PickedUpLayerTypeFactory.getInstance().NONE, IconLayer::NULL_ICON_LAYER, NullAnimationFactory.getFactoryInstance().getInstance(0))
end

