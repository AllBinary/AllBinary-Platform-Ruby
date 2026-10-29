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

class BasicGravityConstantVelocityMovement < BasicConstantVelocityMovement
    attr_accessor :gravityUtil

    def initialize_fields
        @gravityUtil = GravityUtil.getInstance()
    end
    

    def initialize(speedBasicDecimal)
        super(speedBasicDecimal, VelocityProperties.new((speedBasicDecimal.getUnscaled()).to_i, (speedBasicDecimal.getUnscaled()).to_i))
        initialize_fields
    end
    

    # throws Exception
    def process(layer)
        super(layer)
        @gravityUtil.process(self.getVelocityProperties(), @gravityUtil.GAME_GRAVITY_VELOCITY)
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/physics/acceleration/GravityUtil"
require "org/allbinary/game/physics/velocity/VelocityProperties"
require "org/allbinary/logic/math/BasicDecimal"

