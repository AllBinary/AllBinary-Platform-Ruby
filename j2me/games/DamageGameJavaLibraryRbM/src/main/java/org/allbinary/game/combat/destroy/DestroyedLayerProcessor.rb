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
# package org.allbinary.game.combat.destroy

require "java/lang/JavaOverload"
require "org/allbinary/layer/BasicLayerProcessor"

module ::Org; module Allbinary; module Game; module Combat; module Destroy

class DestroyedLayerProcessor < ::Org::Allbinary::Layer::BasicLayerProcessor
    

    def initialize()
        super()
    end
    

    def self.init()
        (DestroyedLayerProcessor.instance_exec(DestroyedLayerProcessor.new()) { |java_value| remove_const(:DESTROYED_LAYER_PROCESSOR) if const_defined?(:DESTROYED_LAYER_PROCESSOR, false); const_set(:DESTROYED_LAYER_PROCESSOR, java_value) })
    end
    

    def self.getInstance()
        return DestroyedLayerProcessor::DESTROYED_LAYER_PROCESSOR
    end
    

    # throws Exception
    def process(allBinaryLayerManager)
        list = self.getList()
        size = list.size()
        destroyedEventHandler = ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyedEventHandler.getInstance()
        destroyEventCircularStaticPool = ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyEventCircularStaticPool.getInstance()
        destroyedEvent = nil
        layerInterface = nil
        (0...size).each do |index|
            layerInterfaceCanBeNull = list.objectArray[index]
            if layerInterfaceCanBeNull != nil
                layerInterface = layerInterfaceCanBeNull
                allBinaryLayerManager.remove(layerInterface)
                destroyedEvent = destroyEventCircularStaticPool.getInstanceForLayer(layerInterface)
                destroyedEventHandler.fireEvent(destroyedEvent)
            else
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            end
        end
        list.clear()
    end
    java_overload :process, 1

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:DESTROYED_LAYER_PROCESSOR, ::Org::Allbinary::Layer::BasicLayerProcessor::NULL_LAYER_PROCESSOR)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DestroyedLayerProcessor"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:DESTROYED_LAYER_PROCESSOR].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyEventCircularStaticPool, "org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool" unless const_defined?(:DestroyEventCircularStaticPool, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyedEvent, "org/allbinary/game/combat/destroy/event/DestroyedEvent" unless const_defined?(:DestroyedEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyedEventHandler, "org/allbinary/game/combat/destroy/event/DestroyedEventHandler" unless const_defined?(:DestroyedEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

begin
    DestroyedLayerProcessor.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

