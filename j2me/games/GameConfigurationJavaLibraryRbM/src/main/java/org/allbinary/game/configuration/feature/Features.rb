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
# package org.allbinary.game.configuration.feature


module ::Org; module Allbinary; module Game; module Configuration; module Feature

class Features
    attr_accessor :logUtil, :commonStrings, :list, :defaultList

    def jfields_org_allbinary_game_configuration_feature_Features
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @list = nil unless instance_variable_defined?(:@list)
        @defaultList = nil unless instance_variable_defined?(:@defaultList)
    end
    

    def self.getInstance()
        if Features::SINGLETON == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (Features.instance_exec(Features.new()) { |java_value| remove_const(:SINGLETON) if const_defined?(:SINGLETON, false); const_set(:SINGLETON, java_value) })
        end
        return Features::SINGLETON
    end
    

    def initialize()
        jfields_org_allbinary_game_configuration_feature_Features
        @list = ::Org::Allbinary::Util::BasicArrayListD.new()
        @defaultList = ::Org::Allbinary::Util::BasicArrayListD.new()
        self.init()
    end
    

    # throws Exception
    def addDefault(gameFeature)
        self.add(gameFeature)
        if !@defaultList.contains(gameFeature)
            @defaultList.add(gameFeature)
        end
    end
    

    # throws Exception
    def add(gameFeature)
        if !@list.contains(gameFeature)
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append(gameFeature.to_s).to_s, self, @commonStrings.ADD)
            @list.add(gameFeature)
            ::Org::Allbinary::Game::Configuration::Event::GameFeatureEventHandler.getInstance().fireEvent(::Org::Allbinary::Game::Configuration::Event::GameFeatureEvent.new(gameFeature, gameFeature.to_s))
        end
    end
    

    # throws Exception
    def removeDefault(gameFeature)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append(gameFeature.to_s).to_s, self, "removeDefault")
        self.remove(gameFeature)
        @defaultList.remove(gameFeature)
    end
    

    # throws Exception
    def remove(gameFeature)
        if @list.contains(gameFeature)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.REMOVE)
            @list.remove(gameFeature)
            ::Org::Allbinary::Game::Configuration::Event::GameFeatureEventHandler.getInstance().fireEvent(::Org::Allbinary::Game::Configuration::Event::GameFeatureEvent.new(gameFeature, gameFeature.to_s))
        end
    end
    

    def init()
        begin
            gameFeatureFactory = GameFeatureFactory.getInstance()
            inputFeatureFactory = InputFeatureFactory.getInstance()
            sensorFeatureFactory = SensorFeatureFactory.getInstance()
            touchFeatureFactory = TouchFeatureFactory.getInstance()
            self.addDefault(gameFeatureFactory.ARTIFICIAL_INTELLEGENCE_PROCESSOR)
            self.addDefault(gameFeatureFactory.COLLIDABLE_INTERFACE_LAYER_PROCESSOR)
            self.addDefault(gameFeatureFactory.GAME_INPUT_LAYER_PROCESSOR)
            self.addDefault(gameFeatureFactory.TICKABLE_LAYER_PROCESSOR)
            self.addDefault(inputFeatureFactory.MULTI_KEY_PRESS)
            self.addDefault(inputFeatureFactory.REMOVE_DUPLICATE_KEY_PRESSES)
            self.addDefault(gameFeatureFactory.SCREEN_SHAKE)
            self.addDefault(gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)
            operatingSystemInterface = ::Org::Allbinary::Logic::System::Os::OperatingSystemFactory.getInstance().getOperatingSystemInstance()
            if operatingSystemInterface.isOverScan()
                self.addDefault(sensorFeatureFactory.NO_ORIENTATION)
                self.addDefault(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            else
                self.addDefault(sensorFeatureFactory.ORIENTATION_SENSORS)
                self.addDefault(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            end
            self.addDefault(touchFeatureFactory.TOUCH_ENABLED)
            self.addDefault(MainFeatureFactory.getInstance().FULL_SCREEN)
            self.addDefault(MainFeatureFactory.getInstance().LOAD_ONDEMAND)
        rescue StandardError => e
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
        end
    end
    

    def isDefault(gameFeature)
        return @defaultList.contains(gameFeature)
    end
    

    def isFeature(gameFeature)
        return @list.contains(gameFeature)
    end
    

    # throws Exception
    def toggle(gameFeature)
        if self.isFeature(gameFeature)
            self.remove(gameFeature)
        else
            self.add(gameFeature)
        end
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:SINGLETON, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Features"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:SINGLETON].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameFeatureEvent, "org/allbinary/game/configuration/event/GameFeatureEvent" unless const_defined?(:GameFeatureEvent, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Event; autoload :GameFeatureEventHandler, "org/allbinary/game/configuration/event/GameFeatureEventHandler" unless const_defined?(:GameFeatureEventHandler, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :GenericOperatingSystem, "org/allbinary/logic/system/os/GenericOperatingSystem" unless const_defined?(:GenericOperatingSystem, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Os; autoload :OperatingSystemFactory, "org/allbinary/logic/system/os/OperatingSystemFactory" unless const_defined?(:OperatingSystemFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
autoload :Feature, "org/allbinary/game/configuration/feature/Feature" unless const_defined?(:Feature, false)
autoload :GameFeatureFactory, "org/allbinary/game/configuration/feature/GameFeatureFactory" unless const_defined?(:GameFeatureFactory, false)
autoload :InputFeatureFactory, "org/allbinary/game/configuration/feature/InputFeatureFactory" unless const_defined?(:InputFeatureFactory, false)
autoload :MainFeatureFactory, "org/allbinary/game/configuration/feature/MainFeatureFactory" unless const_defined?(:MainFeatureFactory, false)
autoload :SensorFeatureFactory, "org/allbinary/game/configuration/feature/SensorFeatureFactory" unless const_defined?(:SensorFeatureFactory, false)
autoload :TouchFeatureFactory, "org/allbinary/game/configuration/feature/TouchFeatureFactory" unless const_defined?(:TouchFeatureFactory, false)

begin
    Features.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

