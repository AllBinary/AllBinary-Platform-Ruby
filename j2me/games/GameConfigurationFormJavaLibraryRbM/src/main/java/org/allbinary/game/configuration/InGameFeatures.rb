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

require "org/allbinary/init/Init"

class InGameFeatures < Init
    

    def init()
        _LABEL = "Screen Buttons"
        orientationData = OrientationData.getInstance()
        exclusiveOrientationSensorVector = GameFeatureChoiceGroups.getExclusiveInstance().get().get(orientationData.ORIENTATION_SENSOR_INPUT)
        inGameFeatureChoiceGroups = InGameFeatureChoiceGroups.getExclusiveInstance()
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
        features = Features.getInstance()
        if features.isFeature(TouchFeatureFactory.getInstance().SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory.getInstance().AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(TouchFeatureFactory.getInstance().HIDE_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector = BasicArrayListD.new()
            touchFeatureFactory = TouchFeatureFactory.getInstance()
            exclusiveScreenButtonsVector.add(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.add(touchFeatureFactory.SHOW_SCREEN_BUTTONS)
            exclusiveScreenButtonsVector.add(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            inGameFeatureChoiceGroups.add(_LABEL, exclusiveScreenButtonsVector)
        end
    end
    

    def addToInGameMenu()
        orientationData = OrientationData.getInstance()
        inGameExclusiveOrientationSensorVector = BasicArrayListD.new()
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().ORIENTATION_SENSORS)
        inGameExclusiveOrientationSensorVector.add(SensorFeatureFactory.getInstance().NO_ORIENTATION)
        InGameFeatureChoiceGroups.getExclusiveInstance().add(orientationData.ORIENTATION_SENSOR_INPUT, inGameExclusiveOrientationSensorVector)
    end
    

    def isAny()
        features = Features.getInstance()
        touchFeatureFactory = TouchFeatureFactory.getInstance()
        if features.isFeature(touchFeatureFactory.SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) || features.isFeature(touchFeatureFactory.HIDE_SCREEN_BUTTONS)
            return true
        end
        exclusiveOrientationSensorVector = GameFeatureChoiceGroups.getExclusiveInstance().get().get(OrientationData.getInstance().ORIENTATION_SENSOR_INPUT)
        if exclusiveOrientationSensorVector != nil
            return true
        end
        return false
    end
end

require "org/allbinary/game/configuration/feature/Features"
require "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups"
require "org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups"
require "org/allbinary/game/configuration/feature/SensorFeatureFactory"
require "org/allbinary/game/configuration/feature/TouchFeatureFactory"
require "org/allbinary/input/gyro/OrientationData"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"

