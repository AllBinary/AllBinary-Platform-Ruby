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


module ::Org; module Allbinary; module Game; module Layer

class AdvancedRTSProperties
    attr_accessor :shakeListener, :vibration, :duration, :waypointBehaviorBase

    def jfields_org_allbinary_game_layer_AdvancedRTSProperties
        @shakeListener = nil unless instance_variable_defined?(:@shakeListener)
        @vibration = nil unless instance_variable_defined?(:@vibration)
        @duration = nil unless instance_variable_defined?(:@duration)
        @waypointBehaviorBase = nil unless instance_variable_defined?(:@waypointBehaviorBase)
    end
    

    def self.createPropertiesSimulated()
        return AdvancedRTSProperties.new(::Org::Allbinary::Animation::Transition::Shake::NoShakeAnimationListener::NO_SHAKE_ANIMATION_LISTENER, ::Org::Allbinary::Media::AllBinaryNoVibration::NO_VIBRATION, 0, WaypointBehaviorBase.new())
    end
    

    def self.createProperties()
        return AdvancedRTSProperties.new(::Org::Allbinary::Animation::Transition::Shake::ShakeAnimationListenerFactory.getInstance(), ::Org::Allbinary::Media::AllBinaryVibration.getInstance(), ::Org::Allbinary::Game::Configuration::GameConfigurationCentral.getInstance().VIBRATION.getValue().to_i * 100, WaypointBehaviorBase.new())
    end
    

    def initialize(shakeListener, vibration, duration, waypointBehaviorBase)
        jfields_org_allbinary_game_layer_AdvancedRTSProperties
        @shakeListener = shakeListener
        @vibration = vibration
        @duration = duration
        @waypointBehaviorBase = waypointBehaviorBase
    end
end

module ::Org; module Allbinary; module Animation; module Transition; module Shake; autoload :NoShakeAnimationListener, "org/allbinary/animation/transition/shake/NoShakeAnimationListener" unless const_defined?(:NoShakeAnimationListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Animation; module Transition; module Shake; autoload :ShakeAnimationListener, "org/allbinary/animation/transition/shake/ShakeAnimationListener" unless const_defined?(:ShakeAnimationListener, false); end; end; end; end; end
module ::Org; module Allbinary; module Animation; module Transition; module Shake; autoload :ShakeAnimationListenerFactory, "org/allbinary/animation/transition/shake/ShakeAnimationListenerFactory" unless const_defined?(:ShakeAnimationListenerFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Configuration; autoload :GameConfigurationCentral, "org/allbinary/game/configuration/GameConfigurationCentral" unless const_defined?(:GameConfigurationCentral, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Tick; autoload :TickableInterface, "org/allbinary/game/tick/TickableInterface" unless const_defined?(:TickableInterface, false); end; end; end; end
module ::Org; module Allbinary; module Media; autoload :AllBinaryNoVibration, "org/allbinary/media/AllBinaryNoVibration" unless const_defined?(:AllBinaryNoVibration, false); end; end; end
module ::Org; module Allbinary; module Media; autoload :AllBinaryVibration, "org/allbinary/media/AllBinaryVibration" unless const_defined?(:AllBinaryVibration, false); end; end; end
module ::Org; module Allbinary; module Media; autoload :AllBinaryVibrationME, "org/allbinary/media/AllBinaryVibrationME" unless const_defined?(:AllBinaryVibrationME, false); end; end; end
autoload :WaypointBehaviorBase, "org/allbinary/game/layer/WaypointBehaviorBase" unless const_defined?(:WaypointBehaviorBase, false)

end; end; end; end

