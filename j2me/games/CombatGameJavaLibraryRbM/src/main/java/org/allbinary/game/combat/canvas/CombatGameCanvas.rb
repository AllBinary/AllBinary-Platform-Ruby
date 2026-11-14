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

require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

class CombatGameCanvas < AllBinaryGameCanvas
    

    def initialize(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
        super(cmdListener, gameLayerManager, highScoresFactoryInterface, gameInitializationInterfaceFactoryInterface, buffered)
    end
    

    def CombatGameCanvas_init()
        DestroyEventCircularStaticPool.getInstance().init(self)
        ProgressCanvasFactory.getInstance().addNormalPortion(50, "Destroy Events")
    end
    

    # throws Exception
    def initApp(abeClientInformation)
        self.CombatGameCanvas_init()
        super(abeClientInformation)
    end
    

    def initConfigurablePortion(portion)
        DestroyedLayerProcessor.init()
        ProgressCanvasFactory.getInstance().addNormalPortion(portion, "Basic Processors")
        features = Features.getInstance()
        gameFeatureFactory = GameFeatureFactory.getInstance()
        if features.isFeature(gameFeatureFactory.DROPPED_ITEMS) && features.isFeature(gameFeatureFactory.DROPPED_ITEMS_FROM_DEATH)
            CombatGameCanvas.basicLayerProcessor = Array.new(2, nil)
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance()
            CombatGameCanvas.basicLayerProcessor[1] = DropLayerProcessor.getInstance()
        else
            CombatGameCanvas.basicLayerProcessor = Array.new(1, nil)
            CombatGameCanvas.basicLayerProcessor[0] = DestroyedLayerProcessor.getInstance()
        end
    end
    

    # throws Exception
    def processPlayingGame()
        super()
        index = CombatGameCanvas.basicLayerProcessor.length
        while (index -= 1) >= 0
            CombatGameCanvas.basicLayerProcessor[index].process(@gameLayerManager)
        end
    end
    

    # throws Exception
    def cleanupGame()
        super()
        index = CombatGameCanvas.basicLayerProcessor.length
        while (index -= 1) >= 0
            CombatGameCanvas.basicLayerProcessor[index].getList().clear()
        end
        GroupLayerManagerListener.getInstance().clear()
        GroupLayerManagerListener.getInstance().log()
        DestroyedEventHandler.getInstance().removeAllListeners()
        self.cleanupManager()
    end
    

    # throws Exception
    def cleanupManager()
        @gameLayerManager.cleanup()
    end

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

autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :DestroyedLayerProcessor, "org/allbinary/game/combat/destroy/DestroyedLayerProcessor"
autoload :DestroyEventCircularStaticPool, "org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool"
autoload :DestroyedEventHandler, "org/allbinary/game/combat/destroy/event/DestroyedEventHandler"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory"
autoload :BasicBuildGameInitializerFactory, "org/allbinary/game/init/BasicBuildGameInitializerFactory"
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager"
autoload :DropLayerProcessor, "org/allbinary/game/layer/drop/DropLayerProcessor"
autoload :GroupLayerManagerListener, "org/allbinary/game/layer/identification/GroupLayerManagerListener"
autoload :HighScoresFactoryInterface, "org/allbinary/game/score/HighScoresFactoryInterface"
autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :BasicLayerProcessor, "org/allbinary/layer/BasicLayerProcessor"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"

begin
    CombatGameCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

