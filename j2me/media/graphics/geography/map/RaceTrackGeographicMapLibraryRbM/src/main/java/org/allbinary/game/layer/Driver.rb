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
# package org.allbinary.game.layer


class Driver
    attr_accessor :turnSpeed, :trackPathSelectionSkill, :aggression

    def initialize_fields
        @turnSpeed = SmallIntegerSingletonFactory.getInstance().getAt(0)
        @trackPathSelectionSkill = SmallIntegerSingletonFactory.getInstance().getAt(0)
        @aggression = nil
    end
    

    def initialize(turnSpeed, trackPathSelectionSkill, aggression)
        initialize_fields
        self.setTurnSpeed(turnSpeed)
        self.setTrackPathSelectionSkill(trackPathSelectionSkill)
        @aggression = aggression
    end
    

    def getTurnSpeed()
        return @turnSpeed
    end
    

    def setTurnSpeed(turnSpeed)
        @turnSpeed = turnSpeed
    end
    

    def getTrackPathSelectionSkill()
        return @trackPathSelectionSkill
    end
    

    def setTrackPathSelectionSkill(trackPathSelectionSkill)
        @trackPathSelectionSkill = trackPathSelectionSkill
    end
    

    def getAggression()
        return @aggression
    end
    

    def setAggression(aggression)
        @aggression = aggression
    end
end

require "org/allbinary/logic/math/SmallIntegerSingletonFactory"
require "org/allbinary/game/layer/Aggression"

class Driver
    NULL_DRIVER = Driver.new(SmallIntegerSingletonFactory.getInstance().getAt(0), SmallIntegerSingletonFactory.getInstance().getAt(0), Aggression.new(SmallIntegerSingletonFactory.getInstance().getAt(0), SmallIntegerSingletonFactory.getInstance().getAt(0), SmallIntegerSingletonFactory.getInstance().getAt(0)))
end

