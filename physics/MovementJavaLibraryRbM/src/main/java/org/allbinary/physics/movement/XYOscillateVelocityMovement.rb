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
# package org.allbinary.physics.movement

require "org/allbinary/physics/movement/BasicConstantVelocityMovement"

class XYOscillateVelocityMovement < BasicConstantVelocityMovement
    attr_accessor :oscillateMin, :oscillateMax, :oscillate, :oscillatePositive

    def initialize_fields
        @oscillateMin = nil
        @oscillateMax = nil
        @oscillate = 0
        @oscillatePositive = false
    end
    

    def initialize(speedBasicDecimal, oscillateMin, oscillateMax)
        super(speedBasicDecimal, VelocityProperties.new((speedBasicDecimal.getUnscaled()).to_i, (speedBasicDecimal.getUnscaled()).to_i))
        initialize_fields
        @oscillateMin = oscillateMin
        @oscillateMax = oscillateMax
    end
    

    # throws Exception
    def process(layer)
        super(layer)
        if @oscillate < @oscillateMin
            @oscillatePositive = true
            self.getVelocityProperties().getVelocityYBasicDecimalP().addint(3000)
        elsif @oscillate > @oscillateMax
            @oscillatePositive = false
            self.getVelocityProperties().getVelocityYBasicDecimalP().subtractint(3000)
        end
        if @oscillatePositive
            @oscillate += 1
            self.getVelocityProperties().getVelocityXBasicDecimalP().addint(5000)
        else
            @oscillate -= 1
            self.getVelocityProperties().getVelocityXBasicDecimalP().subtractint(5000)
        end
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/physics/velocity/VelocityProperties"
require "org/allbinary/logic/math/BasicDecimal"

