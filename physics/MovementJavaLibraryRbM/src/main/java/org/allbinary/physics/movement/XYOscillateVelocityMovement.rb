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

class XYOscillateVelocityMovement < BasicConstantVelocityMovement
    attr_accessor :oscillateMin, :oscillateMax, :oscillate, :oscillatePositive

    def jfields_org_allbinary_physics_movement_XYOscillateVelocityMovement
        @oscillateMin = nil unless instance_variable_defined?(:@oscillateMin)
        @oscillateMax = nil unless instance_variable_defined?(:@oscillateMax)
        @oscillate = 0 unless instance_variable_defined?(:@oscillate)
        @oscillatePositive = false unless instance_variable_defined?(:@oscillatePositive)
    end
    

    def initialize(speedBasicDecimal, oscillateMin, oscillateMax)
        super(speedBasicDecimal, ::Org::Allbinary::Game::Physics::Velocity::VelocityProperties.new(((speedBasicDecimal.getUnscaled()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i }), ((speedBasicDecimal.getUnscaled()).then { |java_value| java_value.is_a?(::String) ? java_value.ord : java_value.to_i })))
        jfields_org_allbinary_physics_movement_XYOscillateVelocityMovement
        @oscillateMin = oscillateMin
        @oscillateMax = oscillateMax
    end
    

    # throws Exception
    def process(layer)
        XYOscillateVelocityMovement.superclass.java_super_method(:process, 1).bind(self).call(layer)
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
    java_overload :process, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayer, "org/allbinary/game/layer/AllBinaryGameLayer" unless const_defined?(:AllBinaryGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :VelocityProperties, "org/allbinary/game/physics/velocity/VelocityProperties" unless const_defined?(:VelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end

end; end; end; end

