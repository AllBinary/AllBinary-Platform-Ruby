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

require "java/lang/JavaOverload"
require "org/allbinary/game/init/GameInitializationInterface"

module ::Org; module Allbinary; module Game; module Init

class BaseGameInitialization
    include GameInitializationInterface
    attr_accessor :resourceInitializationArray, :portion, :initialized, :EARLY_RESOURCES, :GAME_RESOURCES, :EARLY_CHANGABLE_RESOURCES, :GAME_CHANGABLE_RESOURCES, :gameInitialized, :allLoaded

    def jfields_org_allbinary_game_init_BaseGameInitialization
        @resourceInitializationArray = nil unless instance_variable_defined?(:@resourceInitializationArray)
        @portion = nil unless instance_variable_defined?(:@portion)
        @initialized = false unless instance_variable_defined?(:@initialized)
        @EARLY_RESOURCES = 0
        @GAME_RESOURCES = 1
        @EARLY_CHANGABLE_RESOURCES = 2
        @GAME_CHANGABLE_RESOURCES = 3
        @gameInitialized = false unless instance_variable_defined?(:@gameInitialized)
        @allLoaded = false unless instance_variable_defined?(:@allLoaded)
    end
    

    def initialize(resourceInitializationArray, portion)
        jfields_org_allbinary_game_init_BaseGameInitialization
        @resourceInitializationArray = resourceInitializationArray
        @portion = portion
    end
    

    # throws Exception
    def initKey(portion)
    end
    java_overload :initKey, 1
    

    # throws Exception
    def initKeyMapping(abeClientInformation, portion)
        if ::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance().isChangedFeature(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().INPUT_MAPPING)
            ::Org::Allbinary::Game::Input::PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().init(abeClientInformation)
            ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance().addNormalPortion(50, "Game Keys")
            ::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance().remove(::Org::Allbinary::Game::Configuration::Feature::InputFeatureFactory.getInstance().INPUT_MAPPING)
        end
    end
    java_overload :initKeyMapping, 2
    

    # throws Exception
    def init(abeClientInformation, commandListener, level)
        resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
        if !self.isInitialized() && (level == resourceLoadingLevelFactory.LOAD_ALL.getLevel() || level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel())
            localPortion = 40
            if level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()
                localPortion = 8
            end
            self.setInitialized(true)
            self.initKey(self.getPortion())
            self.initKeyMapping(abeClientInformation, self.getPortion())
            ::Org::Allbinary::Game::Input::Event::GameKeyEventFactory.getInstance().init()
            progressCanvas = ::Org::Allbinary::Graphics::Canvas::Transition::Progress::ProgressCanvasFactory.getInstance()
            progressCanvas.addNormalPortion(localPortion, "Game Key Events")
            ::Org::Allbinary::Input::Motion::Button::BasicTouchInputFactory.getInstance().init(::Org::Allbinary::Game::Input::PlatformInputMappingFactory.getInstance().getPersistentInputMappingInstance().getInputMapping())
            ::Org::Allbinary::Input::Motion::Button::CancelTouchButtonInputFactory.getInstance()
            progressCanvas.addNormalPortion(localPortion, "Touch Input")
            ::Org::Allbinary::Input::Motion::CompleteMotionGestureInputToGameMotionGestureInput.getInstance().init()
            progressCanvas.addNormalPortion(localPortion, "Motion Input")
            ::Org::Allbinary::Image::GameFeatureImageCacheFactory.init()
            progressCanvas.addNormalPortion(localPortion, "Image Cache")
            @resourceInitializationArray[@EARLY_RESOURCES].init()
        end
    end
    java_overload :init, 3
    

    # throws Exception
    def resourceInitialization(level)
        resourceLoadingLevelFactory = ::Org::Allbinary::Game::Resource::ResourceLoadingLevelFactory.getInstance()
        if self.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_EARLY.getLevel()
            self.clearResources()
            @resourceInitializationArray[@EARLY_CHANGABLE_RESOURCES].init()
        end
        if self.resourceAnimationChange() && level == resourceLoadingLevelFactory.LOAD_ALL.getLevel()
            if @allLoaded
                self.clearResources()
            end
            if ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().getList().size() == 0
                @resourceInitializationArray[@EARLY_CHANGABLE_RESOURCES].init()
            end
            @resourceInitializationArray[@GAME_CHANGABLE_RESOURCES].init()
            @allLoaded = true
        end
    end
    java_overload :resourceInitialization, 1
    

    def resourceAnimationChange()
        changedGameFeatureListener = ::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance()
        gameConfigurationCentral = ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance()
        if changedGameFeatureListener.isChangedGameConfiguration(gameConfigurationCentral.SCALE)
            return true
        end
        if ::Org::Allbinary::Game::Configuration::Event::ChangedGameFeatureListener.getInstance().isChangedFeature(::Org::Allbinary::Game::Configuration::Feature::MainFeatureFactory.getInstance().STATIC)
            return true
        end
        return false
    end
    java_overload :resourceAnimationChange, 0
    

    def clearResources()
        @allLoaded = false
        ::Org::Allbinary::Image::GameFeatureImageCacheFactory.releaseAll()
        featuredAnimationInterfaceFactoryInterfaceFactory = ::Org::Allbinary::Animation::FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance()
        featuredAnimationInterfaceFactoryInterfaceFactory.clear()
        ::Org::Allbinary::Game::Resource::FeaturedResourceRelativeRelationshipFactory.getInstance().clear()
    end
    java_overload :clearResources, 0
    

    def setGameInitialized(gameInitialized)
        @gameInitialized = gameInitialized
    end
    java_overload :setGameInitialized, 1
    

    def isGameInitialized()
        return @gameInitialized
    end
    java_overload :isGameInitialized, 0
    

    def getPortion()
        return @portion
    end
    java_overload :getPortion, 0
    

    def setInitialized(initialized)
        @initialized = initialized
    end
    java_overload :setInitialized, 1
    

    def isInitialized()
        return @initialized
    end
    java_overload :isInitialized, 0

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

module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; module Animation; autoload :FeaturedAnimationInterfaceFactoryInterfaceFactory, "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory" unless const_defined?(:FeaturedAnimationInterfaceFactoryInterfaceFactory, false); end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :ChangedGameFeatureListener, "org/allbinary/game/configuration/event/ChangedGameFeatureListener" unless const_defined?(:ChangedGameFeatureListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory" unless const_defined?(:InputFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Input; autoload :PlatformInputMappingFactory, "org/allbinary/game/input/PlatformInputMappingFactory" unless const_defined?(:PlatformInputMappingFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Input; module Event; autoload :GameKeyEventFactory, "org/allbinary/game/input/event/GameKeyEventFactory" unless const_defined?(:GameKeyEventFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :FeaturedResourceRelativeRelationshipFactory, "org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory" unless const_defined?(:FeaturedResourceRelativeRelationshipFactory, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceInitialization, "org/allbinary/game/resource/ResourceInitialization" unless const_defined?(:ResourceInitialization, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Resource; autoload :ResourceLoadingLevelFactory, "org/allbinary/game/resource/ResourceLoadingLevelFactory" unless const_defined?(:ResourceLoadingLevelFactory, false); end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvas, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas" unless const_defined?(:ProgressCanvas, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Graphics; module Canvas; module Transition; module Progress; autoload :ProgressCanvasFactory, "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory" unless const_defined?(:ProgressCanvasFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Image; autoload :GameFeatureImageCacheFactory, "org/allbinary/image/GameFeatureImageCacheFactory" unless const_defined?(:GameFeatureImageCacheFactory, false); end; end; end
module ::Org; module Allbinary; module Input; module Motion; autoload :CompleteMotionGestureInputToGameMotionGestureInput, "org/allbinary/input/motion/CompleteMotionGestureInputToGameMotionGestureInput" unless const_defined?(:CompleteMotionGestureInputToGameMotionGestureInput, false); end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :BasicTouchInputFactory, "org/allbinary/input/motion/button/BasicTouchInputFactory" unless const_defined?(:BasicTouchInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Button; autoload :CancelTouchButtonInputFactory, "org/allbinary/input/motion/button/CancelTouchButtonInputFactory" unless const_defined?(:CancelTouchButtonInputFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end

begin
    BaseGameInitialization.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

