# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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
# package org.allbinary.game.layer


class AdvancedRTSProperties
    attr_accessor :shakeListener, :vibration, :duration, :waypointBehaviorBase

    def initialize_fields
        @shakeListener = nil
        @vibration = nil
        @duration = nil
        @waypointBehaviorBase = nil
    end
    

    def self.createPropertiesSimulated()
        return AdvancedRTSProperties.new(NoShakeAnimationListener::NO_SHAKE_ANIMATION_LISTENER, AllBinaryNoVibration::NO_VIBRATION, 0, WaypointBehaviorBase.new())
    end
    

    def self.createProperties()
        return AdvancedRTSProperties.new(ShakeAnimationListenerFactory.getInstance(), AllBinaryVibration.getInstance(), GameConfigurationCentral.getInstance().VIBRATION.getValue().to_i * 100, WaypointBehaviorBase.new())
    end
    

    def initialize(shakeListener, vibration, duration, waypointBehaviorBase)
        initialize_fields
        @shakeListener = shakeListener
        @vibration = vibration
        @duration = duration
        @waypointBehaviorBase = waypointBehaviorBase
    end
end

require "org/allbinary/animation/transition/shake/NoShakeAnimationListener"
require "org/allbinary/animation/transition/shake/ShakeAnimationListener"
require "org/allbinary/animation/transition/shake/ShakeAnimationListenerFactory"
require "org/allbinary/game/configuration/GameConfigurationCentral"
require "org/allbinary/game/tick/TickableInterface"
require "org/allbinary/media/AllBinaryNoVibration"
require "org/allbinary/media/AllBinaryVibration"
require "org/allbinary/media/AllBinaryVibrationME"
require "org/allbinary/game/layer/WaypointBehaviorBase"

