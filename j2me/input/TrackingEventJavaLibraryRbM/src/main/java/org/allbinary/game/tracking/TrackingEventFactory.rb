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

require "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface"

class TrackingEventFactory
    include AllBinaryEventObjectFactoryInterface
    

    def initialize()
    end
    

    def getInstance()
        return TrackingEvent.new(TrackingEventHandler.getInstance())
    end
end

require "org/allbinary/logic/util/event/AllBinaryEventObject"
require "org/allbinary/game/tracking/TrackingEvent"
require "org/allbinary/game/tracking/TrackingEventHandler"

