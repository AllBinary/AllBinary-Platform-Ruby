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
require "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface"

module ::Org; module Allbinary; module Game; module Tracking

class TrackingEventFactory
    include ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObjectFactoryInterface
    

    def initialize()
    end
    

    def getInstance()
        return TrackingEvent.new(TrackingEventHandler.getInstance())
    end
    java_overload :getInstance, 0
end

module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
autoload :TrackingEvent, "org/allbinary/game/tracking/TrackingEvent" unless const_defined?(:TrackingEvent, false)
autoload :TrackingEventHandler, "org/allbinary/game/tracking/TrackingEventHandler" unless const_defined?(:TrackingEventHandler, false)

end; end; end; end

