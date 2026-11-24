# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.layer

require "java/lang/JavaOverload"
require "org/allbinary/game/layer/NullPathFindingLayer"
require "org/allbinary/game/layer/RTSPlayerLayerInterface"

module ::Org; module Allbinary; module Game; module Layer

class NullRTSLayer < NullPathFindingLayer
    include RTSPlayerLayerInterface
    

    def getName()
        raise RuntimeError.new()
    end
    java_overload :getName, 0
    

    # throws Exception
    def processInput(layerManager)
        raise RuntimeError.new()
    end
    java_overload :processInput, 1
    

    def initInputProcessors()
        raise RuntimeError.new()
    end
    java_overload :initInputProcessors, 0
    

    def getGameNotificationHud()
        raise RuntimeError.new()
    end
    java_overload :getGameNotificationHud, 0
    

    def getCurrentScrollSelectionForm()
        raise RuntimeError.new()
    end
    java_overload :getCurrentScrollSelectionForm, 0
    

    def setCurrentScrollSelectionForm(currentScrollSelectionForm)
        raise RuntimeError.new()
    end
    java_overload :setCurrentScrollSelectionForm, 1
    

    def getBuildingScrollSelectionForm()
        raise RuntimeError.new()
    end
    java_overload :getBuildingScrollSelectionForm, 0
    

    def getPlayerGameInput()
        raise RuntimeError.new()
    end
    java_overload :getPlayerGameInput, 0
    

    def onEvent(eventObject)
        raise RuntimeError.new()
    end
    java_overload :onEvent, 1
    

    # throws Exception
    def onDestroyed(destroyedEvent)
        raise RuntimeError.new()
    end
    java_overload :onDestroyed, 1
    

    # throws Exception
    def processTick(allBinaryLayerManager)
        raise RuntimeError.new()
    end
    java_overload :processTick, 1
    

    def getCapital()
        raise RuntimeError.new()
    end
    java_overload :getCapital, 0
    

    def getRTSFormInput()
        return ::Org::Allbinary::Game::Input::Form::NullRTSFormInputFactory.getInstance()
    end
    java_overload :getRTSFormInput, 0
    

    def add(sound)
        raise RuntimeError.new()
    end
    java_overload :add, 1
    

    def getPlayerOwnedRTSLayers()
        raise RuntimeError.new()
    end
    java_overload :getPlayerOwnedRTSLayers, 0
    

    def implmentsArtificialIntelligenceCompositeInterface()
        raise RuntimeError.new()
    end
    java_overload :implmentsArtificialIntelligenceCompositeInterface, 0

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_RTS_LAYER, NullRTSLayer.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullRTSLayer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_RTS_LAYER].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Ag; module Layer; module Hud; module Basic; module Notification; autoload :GameNotificationHud, "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud" unless const_defined?(:GameNotificationHud, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyedEvent, "org/allbinary/game/combat/destroy/event/DestroyedEvent" unless const_defined?(:DestroyedEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlayerGameInput, "org/allbinary/game/input/PlayerGameInput" unless const_defined?(:PlayerGameInput, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :NullRTSFormInputFactory, "org/allbinary/game/input/form/NullRTSFormInputFactory" unless const_defined?(:NullRTSFormInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Form; autoload :RTSFormInput, "org/allbinary/game/input/form/RTSFormInput" unless const_defined?(:RTSFormInput, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Capital; autoload :Capital, "org/allbinary/game/layer/capital/Capital" unless const_defined?(:Capital, false); end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Form; autoload :ScrollSelectionForm, "org/allbinary/graphics/form/ScrollSelectionForm" unless const_defined?(:ScrollSelectionForm, false); end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayerManager, "org/allbinary/layer/AllBinaryLayerManager" unless const_defined?(:AllBinaryLayerManager, false); end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false); end; end; end; end
autoload :PlayerOwnedRTSLayers, "org/allbinary/game/layer/PlayerOwnedRTSLayers" unless const_defined?(:PlayerOwnedRTSLayers, false)

begin
    NullRTSLayer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

