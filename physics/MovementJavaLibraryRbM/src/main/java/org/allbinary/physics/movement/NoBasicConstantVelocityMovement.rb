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

require "java/lang/JavaOverload"
require "org/allbinary/physics/movement/BasicConstantVelocityMovement"

module ::Org; module Allbinary; module Physics; module Movement

class NoBasicConstantVelocityMovement < BasicConstantVelocityMovement
    

    def initialize()
        super(::Org::Allbinary::Logic::MathPackage::BasicDecimal::ZERO_BIGDECIMAL, ::Org::Allbinary::Game::Physics::Velocity::BasicVelocityProperties.new())
    end
    

    # throws Exception
    def process(layer)
    end
    java_overload :process, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayer, "org/allbinary/game/layer/AllBinaryGameLayer" unless const_defined?(:AllBinaryGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties" unless const_defined?(:BasicVelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end

end; end; end; end

