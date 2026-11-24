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
require "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface"
require "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory"

module ::Org; module Allbinary; module Game; module Layer; module Pickup

class CountedPickedUpLayerInterfaceFactory < PickedUpLayerInterfaceFactory
    include CountedPickedUpLayerInterfaceFactoryInterface
    attr_accessor :id

    def jfields_org_allbinary_game_layer_pickup_CountedPickedUpLayerInterfaceFactory
        @id = nil unless instance_variable_defined?(:@id)
    end
    

    def initialize(pickeUpLayerType, iconLayer, animationInterface)
        super(pickeUpLayerType, iconLayer, animationInterface)
        jfields_org_allbinary_game_layer_pickup_CountedPickedUpLayerInterfaceFactory
        list = CountedPickedUpLayerInterfaceFactoryPool.getInstance().getList()
        @id = list.size()
        list.add(self)
    end
    

    # throws Exception
    def getNextInstance(hashtable, x, y, z)
        raise StandardError.new(::Org::Allbinary::StringPackage::CommonStrings.getInstance().NOT_IMPLEMENTED)
    end
    java_overload :getNextInstance, 4
    

    def getTotal()
        return -1
    end
    java_overload :getTotal, 0
    

    def getId()
        return @id
    end
    java_overload :getId, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_COUNTED_PICKUP_LAYER_FACTORY, CountedPickedUpLayerInterfaceFactory.new(PickedUpLayerTypeFactory.getInstance().NONE, IconLayer::NULL_ICON_LAYER, ::Org::Allbinary::Animation::NullAnimationFactory.getFactoryInstance().getInstance(0)))
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

module ::Org; module Allbinary; module Animation; autoload :Animation, "org/allbinary/animation/Animation" unless const_defined?(:Animation, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :NullAnimationFactory, "org/allbinary/animation/NullAnimationFactory" unless const_defined?(:NullAnimationFactory, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
autoload :CountedPickedUpLayerInterfaceFactoryPool, "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool" unless const_defined?(:CountedPickedUpLayerInterfaceFactoryPool, false)
autoload :IconLayer, "org/allbinary/game/layer/pickup/IconLayer" unless const_defined?(:IconLayer, false)
autoload :PickedUpLayerType, "org/allbinary/game/layer/pickup/PickedUpLayerType" unless const_defined?(:PickedUpLayerType, false)
autoload :PickedUpLayerTypeFactory, "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory" unless const_defined?(:PickedUpLayerTypeFactory, false)

begin
    CountedPickedUpLayerInterfaceFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

