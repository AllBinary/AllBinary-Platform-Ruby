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
# package org.allbinary.input.motion.gesture.observer


module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Observer

class MotionGestureReceiveInterfaceFactory
    

    def self.getInstance()
        configuration = ::Org::Allbinary::Input::Motion::Gesture::Configuration::MotionGestureConfigurationFactory.getInstance()
        if !configuration.isExecutingActionsAllowed()
            return NullCompleteMotionGestureReceiver.new()
        else
            return ResolveCompleteMotionGestureListener.new()
        end
    end
end

module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Configuration; autoload :MotionGestureConfiguration, "org/allbinary/input/motion/gesture/configuration/MotionGestureConfiguration" unless const_defined?(:MotionGestureConfiguration, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Input; module Motion; module Gesture; module Configuration; autoload :MotionGestureConfigurationFactory, "org/allbinary/input/motion/gesture/configuration/MotionGestureConfigurationFactory" unless const_defined?(:MotionGestureConfigurationFactory, false); end; end; end; end; end; end
autoload :CompleteMotionGestureListenerInterface, "org/allbinary/input/motion/gesture/observer/CompleteMotionGestureListenerInterface" unless const_defined?(:CompleteMotionGestureListenerInterface, false)
autoload :NullCompleteMotionGestureReceiver, "org/allbinary/input/motion/gesture/observer/NullCompleteMotionGestureReceiver" unless const_defined?(:NullCompleteMotionGestureReceiver, false)
autoload :ResolveCompleteMotionGestureListener, "org/allbinary/input/motion/gesture/observer/ResolveCompleteMotionGestureListener" unless const_defined?(:ResolveCompleteMotionGestureListener, false)

end; end; end; end; end; end

