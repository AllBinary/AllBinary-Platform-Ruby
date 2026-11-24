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


module ::Org; module Allbinary; module Game; module Init

class GameInitializationUtil
    attr_accessor :EVENT

    def jfields_org_allbinary_game_init_GameInitializationUtil
        @EVENT = ::Org::Allbinary::Game::Configuration::Event::GameInitializedEvent.new(self)
    end

    def initialize
        jfields_org_allbinary_game_init_GameInitializationUtil
    end
    

    # throws Exception
    def initDemo(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
        mainFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance()
        if ::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance().isChangedFeature(mainFeatureFactory.STATIC)
            gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance()
            features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
            if features.isFeature(mainFeatureFactory.LOAD_ALL)
                self.initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
            elsif features.isFeature(mainFeatureFactory.LOAD_ONDEMAND)
                resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
                gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_EARLY.getLevel())
                @EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_EARLY)
            else
                raise StandardError.new("No Loading Feature Available")
            end
            ::Org::Allbinary::Game::Configuration::Event::GameInitializedEventHandler.getInstance().fireEvent(@EVENT)
        end
    end
    

    # throws Exception
    def initGame(abeClientInformation, canvas, gameInitializationInterfaceFactoryInterface)
        if ::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance().isChangedFeature(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().STATIC)
            gameInitializationInterface = gameInitializationInterfaceFactoryInterface.getInstance()
            resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
            gameInitializationInterface.init(abeClientInformation, canvas.getCustomCommandListener(), resourceLoadingLevelFactory.LOAD_ALL.getLevel())
            @EVENT.setResourceLoadingLevel(resourceLoadingLevelFactory.LOAD_ALL)
            ::Org::Allbinary::Game::Configuration::Event::GameInitializedEventHandler.getInstance().fireEvent(@EVENT)
            ::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance().remove(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().STATIC)
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

module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener" unless const_defined?(:ChangedGameFeatureListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameInitializedEvent, "org/allbinary/game/configuration/event/GameInitializedEvent" unless const_defined?(:GameInitializedEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameInitializedEventHandler, "org/allbinary/game/configuration/event/GameInitializedEventHandler" unless const_defined?(:GameInitializedEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory" unless const_defined?(:ResourceLoadingLevelFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; autoload :MyCanvas, "org/allbinary/graphics/displayable/MyCanvas" unless const_defined?(:MyCanvas, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
autoload :BasicBuildGameInitializerFactory, "org/allbinary/game/init/BasicBuildGameInitializerFactory" unless const_defined?(:BasicBuildGameInitializerFactory, false)
autoload :GameInitializationInterface, "org/allbinary/game/init/GameInitializationInterface" unless const_defined?(:GameInitializationInterface, false)

begin
    GameInitializationUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

