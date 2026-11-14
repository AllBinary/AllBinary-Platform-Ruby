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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_BASE_GAME_INITIALIZATION, BaseGameInitialization.new(Array.new(0, nil), 0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BaseGameInitialization"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_BASE_GAME_INITIALIZATION].include?(name)
        end
        super
    end
end

autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory"
autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral"
autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener"
autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory"
autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory"
autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory"
autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory"
autoload :FeaturedResourceRelativeRelationshipFactory, "org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory"
autoload :ResourceInitialization, "org/allbinary/game/resource/ResourceInitialization"
autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory"
autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas"
autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory"
autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory"
autoload :CompleteMotionGestureInputToGameMotionGestureInput, "org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput"
autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory"
autoload :CancelTouchButtonInputFactory, "org/allbinary/input/motion/button/CancelTouchButtonInputFactory"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"

begin
    BaseGameInitialization.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

