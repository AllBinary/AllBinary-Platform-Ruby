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

class CustomGravityConstantVelocityMovement < BasicConstantVelocityMovement
    attr_accessor :customGravity, :gravityUtil

    def initialize_fields
        @customGravity = nil
        @gravityUtil = GravityUtil.getInstance()
    end
    

    def initialize(speedBasicDecimal, customGravity)
        super(speedBasicDecimal, VelocityProperties.new((speedBasicDecimal.getUnscaled()).to_i, (speedBasicDecimal.getUnscaled()).to_i))
        initialize_fields
        @customGravity = customGravity
    end
    

    # throws Exception
    def process(layer)
        super(layer)
        @gravityUtil.process(self.getVelocityProperties(), @customGravity)
        velocityProperties = self.getVelocityProperties()
        velocityProperties.limitMaxYForwardVelocity()
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/physics/acceleration/GravityUtil"
require "org/allbinary/game/physics/velocity/VelocityProperties"
require "org/allbinary/logic/math/BasicDecimal"

