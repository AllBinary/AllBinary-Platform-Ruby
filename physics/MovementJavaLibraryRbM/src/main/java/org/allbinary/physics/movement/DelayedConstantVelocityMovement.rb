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

class DelayedConstantVelocityMovement < BasicConstantVelocityMovement
    attr_accessor :timeDelayHelper

    def jfields_org_allbinary_physics_movement_DelayedConstantVelocityMovement
        @timeDelayHelper = ::Org::Allbinary::TimePackage::TimeDelayHelper.new(60)
    end
    

    def initialize(basicDecimal, velocityProperties)
        super(basicDecimal, velocityProperties)
        jfields_org_allbinary_physics_movement_DelayedConstantVelocityMovement
    end
    

    def init(speedBasicDecimal, angle, otherAngle)
    end
    java_overload :init, 3
    

    # throws Exception
    def process(layer)
        if @timeDelayHelper.isTime(::Org::Allbinary::TimePackage::GameTickTimeDelayHelperFactory.getInstance().startTime)
            DelayedConstantVelocityMovement.superclass.java_super_method(:process, 1).bind(self).call(layer)
        end
    end
    java_overload :process, 1
end

module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayer, "org/allbinary/game/layer/AllBinaryGameLayer" unless const_defined?(:AllBinaryGameLayer, false); end; end; end; end
module ::Org; module Allbinary; module Game; module Physics; module Velocity; autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties" unless const_defined?(:BasicVelocityProperties, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module MathPackage; autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal" unless const_defined?(:BasicDecimal, false); end; end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :GameTickTimeDelayHelperFactory, "org/allbinary/time/GameTickTimeDelayHelperFactory" unless const_defined?(:GameTickTimeDelayHelperFactory, false); end; end; end
module ::Org; module Allbinary; module TimePackage; autoload :TimeDelayHelper, "org/allbinary/time/TimeDelayHelper" unless const_defined?(:TimeDelayHelper, false); end; end; end

end; end; end; end

