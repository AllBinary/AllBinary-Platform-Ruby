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


class GameInitializationUtil
    attr_accessor :EVENT

    def initialize_fields
        @EVENT = GameInitializedEvent.new(self)
    end

    def initialize
        initialize_fields
    end
    

    # throws Exception
    def initDemo(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
        mainFeatureFactory = MainFeatureFactory.getInstance()
        if ChangedGameFeatureListener.getInstance().isChangedFeature(mainFeatureFactory.STATIC)
            gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance()
            features = Features.getInstance()
            if features.isFeature(mainFeatureFactory.LOAD_ALL)
                self.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
            elsif features.isFeature(mainFeatureFactory.LOAD_ONDEMAND)
                resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
                gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_EARLY.getLevel())
                @EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_EARLY)
            else
                raise StandardError.new("No Loading Feature Available")
            end
            GameInitializedEventHandler.getInstance().fireEvent(@EVENT)
        end
    end
    

    # throws Exception
    def initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
        if ChangedGameFeatureListener.getInstance().isChangedFeature(MainFeatureFactory.getInstance().STATIC)
            gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance()
            resourceLoadingLevelFactory = ResourceLoadingLevelFactory.getInstance()
            gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_ALL.getLevel())
            @EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_ALL)
            GameInitializedEventHandler.getInstance().fireEvent(@EVENT)
            ChangedGameFeatureListener.getInstance().remove(MainFeatureFactory.getInstance().STATIC)
        end
    end
    

    def self.getInstance()
        return GameInitializationUtil.instance
    end

    def self.instance()
        GameInitializationUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GameInitializationUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GameInitializationUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GameInitializationUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener"
autoload :GameInitializedEvent, "org/allbinary/game/configuration/event/GameInitializedEvent"
autoload :GameInitializedEventHandler, "org/allbinary/game/configuration/event/GameInitializedEventHandler"
autoload :Features, "org/allbinary/game/configuration/feature/Features"
autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory"
autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory"
autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :BasicBuildGameInitializerFactory, "org/allbinary/game/init/BasicBuildGameInitializerFactory"
autoload :GameInitializationInterface, "org/allbinary/game/init/GameInitializationInterface"

begin
    GameInitializationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

