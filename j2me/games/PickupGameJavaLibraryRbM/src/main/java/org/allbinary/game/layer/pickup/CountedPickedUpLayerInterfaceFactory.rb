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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_COUNTED_PICKUP_LAYER_FACTORY, CountedPickedUpLayerInterfaceFactory.new(PickedUpLayerTypeFactory.getInstance().NONE, IconLayer::NULL_ICON_LAYER, NullAnimationFactory.getFactoryInstance().getInstance(0)))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CountedPickedUpLayerInterfaceFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_COUNTED_PICKUP_LAYER_FACTORY].include?(name)
        end
        super
    end
end

autoload :Animation, "org/allbinary/animation/Animation"
autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory"
autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :CountedPickedUpLayerInterfaceFactoryPool, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool"
autoload :IconLayer, "org/allbinary/game/layer/pickup/IconLayer"
autoload :PickedUpLayerType, "org/allbinary/game/layer/pickup/PickedUpLayerType"
autoload :PickedUpLayerTypeFactory, "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory"

begin
    CountedPickedUpLayerInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

