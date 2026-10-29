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


class Features
    attr_accessor :logUtil, :commonStrings, :list, :defaultList

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @list = nil
        @defaultList = nil
    end
    

    def self.getInstance()
        if Features::SINGLETON == NullUtil.getInstance().NULL_OBJECT
            Features::SINGLETON = Features.new()
        end
        return Features::SINGLETON
    end
    

    def initialize()
        initialize_fields
        @list = BasicArrayListD.new()
        @defaultList = BasicArrayListD.new()
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
            @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.to_s).to_s, self, @commonStrings.ADD)
            @list.add(gameFeature)
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent.new(gameFeature, gameFeature.to_s))
        end
    end
    

    # throws Exception
    def removeDefault(gameFeature)
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(gameFeature.to_s).to_s, self, "removeDefault")
        self.remove(gameFeature)
        @defaultList.remove(gameFeature)
    end
    

    # throws Exception
    def remove(gameFeature)
        if @list.contains(gameFeature)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.REMOVE)
            @list.remove(gameFeature)
            GameFeatureEventHandler.getInstance().fireEvent(GameFeatureEvent.new(gameFeature, gameFeature.to_s))
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
            operatingSystemInterface = OperatingSystemFactory.getInstance().getOperatingSystemInstance()
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
            PreLogUtil.putOE(@commonStrings.EXCEPTION, self, @commonStrings.INIT, e)
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
end

require "org/allbinary/game/configuration/event/GameFeatureEvent"
require "org/allbinary/game/configuration/event/GameFeatureEventHandler"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/logic/system/os/OperatingSystemFactory"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/game/configuration/feature/Feature"
require "org/allbinary/game/configuration/feature/GameFeatureFactory"
require "org/allbinary/game/configuration/feature/InputFeatureFactory"
require "org/allbinary/game/configuration/feature/MainFeatureFactory"
require "org/allbinary/game/configuration/feature/SensorFeatureFactory"
require "org/allbinary/game/configuration/feature/TouchFeatureFactory"

class Features
    SINGLETON = NullUtil.getInstance().NULL_OBJECT
end

