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
# package org.allbinary.game.tracking

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/EventListenerInterface"

module ::Org; module Allbinary; module Game; module Tracking

module TrackingEventListenerInterface
    include ::Org::Allbinary::Logic::Util::Event::EventListenerInterface
    

    # throws Exception
    def onMovement(trackingEvent)
        return super if defined?(super)
        raise NotImplementedError
    end
    java_overload :onMovement, 1
end

autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false)

end; end; end; end

