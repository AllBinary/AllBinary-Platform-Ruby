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

class NoBasicConstantVelocityMovement < BasicConstantVelocityMovement
    

    def initialize()
        super(BasicDecimal::ZERO_BIGDECIMAL, BasicVelocityProperties.new())
    end
    

    # throws Exception
    def process(layer)
    end
end

require "org/allbinary/game/layer/AllBinaryGameLayer"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/logic/math/BasicDecimal"

