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

class SimpleGravityVelocityMovement < BasicConstantVelocityMovement
    attr_accessor :gravityUtil

    def jfields_org_allbinary_physics_movement_SimpleGravityVelocityMovement
        @gravityUtil = ::Org::Allbinary::Game::Physics::Acceleration::GravityUtil.getInstance()
    end
    

    def initialize(speedBasicDecimal)
        super(speedBasicDecimal, ::Org::Allbinary::Game::Physics::Velocity::VelocityProperties.new(((speedBasicDecimal.getUnscaled()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), ((speedBasicDecimal.getUnscaled()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })))
        jfields_org_allbinary_physics_movement_SimpleGravityVelocityMovement
    end
    

    # throws Exception
    def process(layer)
        @gravityUtil.process(self.getVelocityProperties(), @gravityUtil.GAME_GRAVITY_VELOCITY)
        SimpleGravityVelocityMovement.superclass.java_super_method(:process, 1).bind(self).call(layer)
    end
    java_overload :process, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayer, "org/allbinary/game/layer/AllBinaryGameLayer" unless const_defined?(:AllBinaryGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Acceleration; autoload :GravityUtil, "org/allbinary/game/physics/acceleration/GravityUtil" unless const_defined?(:GravityUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityProperties, "org/allbinary/game/physics/velocity/VelocityProperties" unless const_defined?(:VelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end

end; end; end; end

