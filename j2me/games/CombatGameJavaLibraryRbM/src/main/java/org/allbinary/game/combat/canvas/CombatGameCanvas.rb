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
# package org.allbinary.game.combat.canvas

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

module ::Org; module Allbinary; module Game; module Combat; module Canvas

class CombatGameCanvas < ::Org::Allbinary::Game::Displayable::Canvas::AllBinaryGameCanvas
    

    def initialize(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
        super(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
    end
    

    def CombatGameCanvas_init()
        ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyEventCircularStaticPool.getInstance().init(self)
        ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance().addNormalPortion(50, "Destroy Events")
    end
    java_overload :CombatGameCanvas_init, 0
    

    # throws Exception
    def initApp(abeClientInformation)
        self.CombatGameCanvas_init()
        CombatGameCanvas.superclass.java_super_method(:initApp, 1).bind(self).call(abeClientInformation)
    end
    java_overload :initApp, 1
    

    def initConfigurablePortion(portion)
        ::Org::Allbinary::Game::Combat::Destroy::DestroyedLayerProcessor.init()
        ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance().addNormalPortion(portion, "Basic Processors")
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        gameFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureFactory.getInstance()
        if features.isFeature(gameFeatureFactory.DROPPED_ITEMS) && features.isFeature(gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH)
            CombatGameCanvas.basicLayerProcessor = Array.new(2, nil)
            CombatGameCanvas.basicLayerProcessor[0] = ::Org::Allbinary::Game::Combat::Destroy::DestroyedLayerProcessor.getInstance()
            CombatGameCanvas.basicLayerProcessor[1] = ::Org::Allbinary::Game::Layer::Drop::DropLayerProcessor.getInstance()
        else
            CombatGameCanvas.basicLayerProcessor = Array.new(1, nil)
            CombatGameCanvas.basicLayerProcessor[0] = ::Org::Allbinary::Game::Combat::Destroy::DestroyedLayerProcessor.getInstance()
        end
    end
    java_overload :initConfigurablePortion, 1
    

    # throws Exception
    def processPlayingGame()
        CombatGameCanvas.superclass.java_super_method(:processPlayingGame, 0).bind(self).call()
        index = CombatGameCanvas.basicLayerProcessor.length
        while (index -= 1) >= 0
            CombatGameCanvas.basicLayerProcessor[index].process(@gameLayerManager)
        end
    end
    java_overload :processPlayingGame, 0
    

    # throws Exception
    def cleanupGame()
        CombatGameCanvas.superclass.java_super_method(:cleanupGame, 0).bind(self).call()
        index = CombatGameCanvas.basicLayerProcessor.length
        while (index -= 1) >= 0
            CombatGameCanvas.basicLayerProcessor[index].getList().clear()
        end
        ::Org::Allbinary::Game::Layer::Identification::GroupLayerManagerListener.getInstance().clear()
        ::Org::Allbinary::Game::Layer::Identification::GroupLayerManagerListener.getInstance().log()
        ::Org::Allbinary::Game::Combat::Destroy::Event::DestroyedEventHandler.getInstance().removeAllListeners()
        self.cleanupManager()
    end
    java_overload :cleanupGame, 0
    

    # throws Exception
    def cleanupManager()
        @gameLayerManager.cleanup()
    end
    java_overload :cleanupManager, 0

    def self.basicLayerProcessor()
        CombatGameCanvas.java_static_fields unless @java_static_fields_started
        return defined?(@@basicLayerProcessor) ? @@basicLayerProcessor : nil
    end

    def self.basicLayerProcessor=(value)
        CombatGameCanvas.java_static_fields unless @java_static_fields_started
        @@basicLayerProcessor = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@basicLayerProcessor = Array.new(0, nil)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CombatGameCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; autoload :DestroyedLayerProcessor, "org/allbinary/game/combat/destroy/DestroyedLayerProcessor" unless const_defined?(:DestroyedLayerProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyEventCircularStaticPool, "org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool" unless const_defined?(:DestroyEventCircularStaticPool, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Combat; module Destroy; module Event; autoload :DestroyedEventHandler, "org/allbinary/game/combat/destroy/event/DestroyedEventHandler" unless const_defined?(:DestroyedEventHandler, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Init; autoload :BasicBuildGameInitializerFactory, "org/allbinary/game/init/BasicBuildGameInitializerFactory" unless const_defined?(:BasicBuildGameInitializerFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Drop; autoload :DropLayerProcessor, "org/allbinary/game/layer/drop/DropLayerProcessor" unless const_defined?(:DropLayerProcessor, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Layer; module Identification; autoload :GroupLayerManagerListener, "org/allbinary/game/layer/identification/GroupLayerManagerListener" unless const_defined?(:GroupLayerManagerListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Score; autoload :HighScoresFactoryInterface, "org/allbinary/game/score/HighScoresFactoryInterface" unless const_defined?(:HighScoresFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Layer; autoload :BasicLayerProcessor, "org/allbinary/layer/BasicLayerProcessor" unless const_defined?(:BasicLayerProcessor, false); end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end

begin
    CombatGameCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

