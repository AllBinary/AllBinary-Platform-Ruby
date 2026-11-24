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
# package org.allbinary.game.configuration

require "java/lang/JavaOverload"
require "org/allbinary/init/Init"

module ::Org; module Allbinary; module Game; module Configuration

class InGameFeatures < ::Org::Allbinary::Init::Init
    

    def init()
        _LABEL = "Screen Buttons"
        orientationData = ::Org::Allbinary::Input::Gyro::OrientationData.getInstance()
        exclusiveOrientationSensorVector = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureChoiceGroups.getExclusiveInstance().get().get(orientationData.ORIENTATION_SENSOR_INPUT)
        inGameFeatureChoiceGroups = ::Org::Allbinary::Game::Configuration::Feature::InGameFeatureChoiceGroups.getExclusiveInstance()
        if exclusiveOrientationSensorVector != nil
            inGameExclusiveOrientationSensorVectorCanBeNull = inGameFeatureChoiceGroups.get().get(orientationData.ORIENTATION_SENSOR_INPUT)
            if inGameExclusiveOrientationSensorVectorCanBeNull == nil
                self.addToInGameMenu()
            else
                inGameExclusiveOrientationSensorVector = inGameExclusiveOrientationSensorVectorCanBeNull
                if inGameExclusiveOrientationSensorVector.size() == 0
                    self.addToInGameMenu()
                end
            end
        end
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        if features.isFeature(::Org::Allbinary::Game::Configuration::Feature::TouchFeatureFactory.getInstance().SHOW_SCREEN_BUTTONS) || features.isFeature(::Org::Allbinary::Game::Configuration::Feature::TouchFeatureFactory.getInstance().AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(::Org::Allbinary::Game::Configuration::Feature::TouchFeatureFactory.getInstance().HIDE_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            touchFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::TouchFeatureFactory.getInstance()
            exclusiveScreenButtonsVector.add(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.add(touchFeatureFactory.SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.add(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            inGameFeatureChoiceGroups.add(_LABEL, exclusiveScreenButtonsVector)
        end
    end
    java_overload :init, 0
    

    def addToInGameMenu()
        orientationData = ::Org::Allbinary::Input::Gyro::OrientationData.getInstance()
        inGameExclusiveOrientationSensorVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        inGameExclusiveOrientationSensorVector.add(::Org::Allbinary::Game::Configuration::Feature::SensorFeatureFactory.getInstance().ORIENTATION_SENSORS)
        inGameExclusiveOrientationSensorVector.add(::Org::Allbinary::Game::Configuration::Feature::SensorFeatureFactory.getInstance().NO_ORIENTATION)
        ::Org::Allbinary::Game::Configuration::Feature::InGameFeatureChoiceGroups.getExclusiveInstance().add(orientationData.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector)
    end
    java_overload :addToInGameMenu, 0
    

    def isAny()
        features = ::Org::Allbinary::Game::Configuration::Feature::Features.getInstance()
        touchFeatureFactory = ::Org::Allbinary::Game::Configuration::Feature::TouchFeatureFactory.getInstance()
        if features.isFeature(touchFeatureFactory.SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            return true
        end
        exclusiveOrientationSensorVector = ::Org::Allbinary::Game::Configuration::Feature::GameFeatureChoiceGroups.getExclusiveInstance().get().get(::Org::Allbinary::Input::Gyro::OrientationData.getInstance().ORIENTATION_SENSOR_INPUT)
        if exclusiveOrientationSensorVector != nil
            return true
        end
        return false
    end
    java_overload :isAny, 0
end

module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :Features, "org/allbinary/game/configuration/feature/Features" unless const_defined?(:Features, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :GameFeatureChoiceGroups, "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups" unless const_defined?(:GameFeatureChoiceGroups, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :InGameFeatureChoiceGroups, "org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups" unless const_defined?(:InGameFeatureChoiceGroups, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :SensorFeatureFactory, "org/allbinary/game/configuration/feature/SensorFeatureFactory" unless const_defined?(:SensorFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; module Feature; autoload :TouchFeatureFactory, "org/allbinary/game/configuration/feature/TouchFeatureFactory" unless const_defined?(:TouchFeatureFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; module Gyro; autoload :OrientationData, "org/allbinary/input/gyro/OrientationData" unless const_defined?(:OrientationData, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end

