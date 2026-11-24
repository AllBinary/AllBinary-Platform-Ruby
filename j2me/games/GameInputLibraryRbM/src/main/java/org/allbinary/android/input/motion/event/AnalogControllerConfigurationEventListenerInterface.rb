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
# package org.allbinary.android.input.motion.event

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Android; module Input; module Motion; module Event

module AnalogControllerConfigurationEventListenerInterface
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    # throws Exception
    def onAnalogControllerConfigurationEvent(analogControllerConfigurationEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onAnalogControllerConfigurationEvent, 1
end

autoload :AnalogControllerConfigurationEvent, "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent" unless const_defined?(:AnalogControllerConfigurationEvent, false)

end; end; end; end; end; end

