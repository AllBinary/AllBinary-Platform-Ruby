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
# package org.allbinary.game.ag.ai.scroller

# require "javax/microedition/lcdui/Canvas"
require "org/allbinary/game/ai/BasicAI"

class TimedFireAI < BasicAI
    attr_accessor :maxFireDelayTimeHelper, :delay

    def initialize_fields
        @maxFireDelayTimeHelper = TimeDelayHelper.new(0)
        @delay = nil
    end
    

    def initialize(delay, ownerLayerInterface, gameInput)
        super(ownerLayerInterface, gameInput)
        initialize_fields
        @delay = delay
    end
    

    # throws Exception
    def processAI(allBinaryLayerManager)
        timeFiredInterface = self.getOwnerLayerInterface()
        if @maxFireDelayTimeHelper.isTime(GameTickTimeDelayHelperFactory.getInstance().startTime) && timeFiredInterface.getLastFireTime() + @maxFireDelayTimeHelper.delay < @maxFireDelayTimeHelper.getStartTime()
            self.class.superclass.instance_method(:processKeyAI).bind(self).call(Canvas::KEY_NUM1)
            @maxFireDelayTimeHelper.delay = @delay
        end
    end
end

require "org/allbinary/game/input/GameInput"
require "org/allbinary/layer/AllBinaryLayer"
require "org/allbinary/layer/AllBinaryLayerManager"
require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/time/GameTickTimeDelayHelperFactory"
require "org/allbinary/time/TimeDelayHelper"
require "org/allbinary/game/ag/ai/scroller/TimeFiredInterface"

class TimedFireAI
    TIME = SmallIntegerSingletonFactory.getInstance().getAt(1)
end

