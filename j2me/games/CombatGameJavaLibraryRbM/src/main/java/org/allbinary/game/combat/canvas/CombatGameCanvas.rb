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

# require "javax/microedition/lcdui/CommandListener"
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
        return defined?(@@basicLayerProcessor) ? @@basicLayerProcessor : nil
    end

    def self.basicLayerProcessor=(value)
        @@basicLayerProcessor = value
    end
end

require "org/allbinary/game/combat/destroy/DestroyedLayerProcessor"
require "org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool"
require "org/allbinary/game/combat/destroy/event/DestroyedEventHandler"
require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/game/init/BasicBuildGameInitializerFactory"
require "org/allbinary/game/layer/AllBinaryGameLayerManager"
require "org/allbinary/game/layer/drop/DropLayerProcessor"
require "org/allbinary/game/layer/identification/GroupLayerManagerListener"
require "org/allbinary/game/score/HighScoresFactoryInterface"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/layer/BasicLayerProcessor"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"

class CombatGameCanvas
    @@basicLayerProcessor = Array.new(0, nil)
end

