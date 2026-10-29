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
# package org.allbinary.game.init

# require "javax/microedition/lcdui/CommandListener"
require "org/allbinary/game/init/GameInitializationInterface"

class BaseGameInitialization
    include GameInitializationInterface
    attr_accessor :resourceInitializationArray, :portion, :initialized, :EARLY_RESOURCES, :GAME_RESOURCES, :EARLY_CHANGABLE_RESOURCES, :GAME_CHANGABLE_RESOURCES, :gameInitialized, :allLoaded

    def initialize_fields
        @resourceInitializationArray = nil
        @portion = nil
        @initialized = false
        @EARLY_RESOURCES = 0
        @GAME_RESOURCES = 1
        @EARLY_CHANGABLE_RESOURCES = 2
        @GAME_CHANGABLE_RESOURCES = 3
        @gameInitialized = false
        @allLoaded = false
    end
    

    def initialize(resourceInitializationArray, portion)
        initialize_fields
        @resourceInitializationArray = resourceInitializationArray
        @portion = portion
    end
    

    # throws Exception
    def initKey(portion)
    end
    

    # throws Exception
    def initKeyMapping(abeClientInformation, portion)
        if ChangedGameFeatureListener.getInstance().isChangedFeature(InputFeatureFactory.getInstance().INPUT_MAPPING)
            PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().init(abeClientInformation)
            ProgressCanvasFactory.getInstance().addNormalPortion(50, "Game Keys")
            ChangedGameFeatureListener.getInstance().remove(InputFeatureFactory.getInstance().INPUT_MAPPING)
        end
    end
    

    # throws Exception
    def init(abeClientInformation, commandListener, level)
        resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if !self.isInitialized() && (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel() || level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel())
            localPortion = 40
            if level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()
                localPortion = 8
            end
            self.setInitialized(true)
            self.initKey(self.getPortion())
            self.initKeyMapping(abeClientInformation, self.getPortion())
            GameKeyEventFactory.getInstance().init()
            progressCanvas = ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(localPortion, "Game Key Events")
            BasicTouchInputFactory.getInstance().init(PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
            CancelTouchButtonInputFactory.getInstance()
            progressCanvas.addNormalPortion(localPortion, "Touch Input")
            CompleteMotionGestureInputToGameMotionGestureInput.getInstance().init()
            progressCanvas.addNormalPortion(localPortion, "Motion Input")
            GameFeatureImageCacheFactory.init()
            progressCanvas.addNormalPortion(localPortion, "Image Cache")
            @resourceInitializationArray[@EARLY_RESOURCES].init()
        end
    end
    

    # throws Exception
    def resourceInitialization(level)
        resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
        if self.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()
            self.clearResources()
            @resourceInitializationArray[@EARLY_CHANGABLE_RESOURCES].init()
        end
        if self.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()
            if @allLoaded
                self.clearResources()
            end
            if FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getList().size() == 0
                @resourceInitializationArray[@EARLY_CHANGABLE_RESOURCES].init()
            end
            @resourceInitializationArray[@GAME_CHANGABLE_RESOURCES].init()
            @allLoaded = true
        end
    end
    

    def resourceAnimationChange()
        changedGameFeatureListener = ChangedGameFeatureListener.getInstance()
        gameConfigurationCentral = GameConfigurationCentral.getInstance()
        if changedGameFeatureListener.isChangedGameConfiguration(gameConfigurationCentral.SCALE)
            return true
        end
        if ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)
            return true
        end
        return false
    end
    

    def clearResources()
        @allLoaded = false
        GameFeatureImageCacheFactory.releaseAll()
        featuredAnimationInterfaceFactoryInterfaceFactory = FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredAnimationInterfaceFactoryInterfaceFactory.clear()
        FeaturedResourceRelativeRelationshipFactory.getInstance().clear()
    end
    

    def setGameInitialized(gameInitialized)
        @gameInitialized = gameInitialized
    end
    

    def isGameInitialized()
        return @gameInitialized
    end
    

    def getPortion()
        return @portion
    end
    

    def setInitialized(initialized)
        @initialized = initialized
    end
    

    def isInitialized()
        return @initialized
    end
end

require "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/game/configuration/event/ChangedGameFeatureListener"
require "org/allbinary/game/configuration/feature/InputFeatureFactory"
require "org/allbinary/game/configuration/feature/MainFeatureFactory"
require "org/allbinary/game/input/PlatformInputMappingFactory"
require "org/allbinary/game/input/event/GameKeyEventFactory"
require "org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory"
require "org/allbinary/game/resource/ResourceInitialization"
require "org/allbinary/game/resource/ResourceLoadingLevelFactory"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
require "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
require "org/allbinary/image/GameFeatureImageCacheFactory"
require "org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput"
require "org/allbinary/input/motion/button/BasicTouchInputFactory"
require "org/allbinary/input/motion/button/CancelTouchButtonInputFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"

class BaseGameInitialization
    NULL_BASE_GAME_INITIALIZATION = BaseGameInitialization.new(Array.new(0, nil), 0)
end

