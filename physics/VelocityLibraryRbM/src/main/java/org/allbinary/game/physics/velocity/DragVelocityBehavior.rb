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
# package org.allbinary.game.physics.velocity

require "org/allbinary/game/physics/velocity/VelocityBehaviorBase"

class DragVelocityBehavior < VelocityBehaviorBase
    

    def reduce(velocityProperties, nominator, denominator)
        if velocityProperties.getVelocityXBasicDecimalP().getUnscaled() != 0
            basicDecimal = velocityProperties.getVelocityXBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        end
        if velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0
            basicDecimal = velocityProperties.getVelocityYBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        end
    end
    

    def reduceX(velocityProperties, nominator, denominator)
        basicDecimal = velocityProperties.getVelocityXBasicDecimalP()
        if basicDecimal.getUnscaled() != 0
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        end
    end
    

    def reduceY(velocityProperties, nominator, denominator)
        if velocityProperties.getVelocityYBasicDecimalP().getUnscaled() != 0
            basicDecimal = velocityProperties.getVelocityYBasicDecimalP()
            basicDecimal.multiplyint(nominator)
            basicDecimal.divideint(denominator)
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/math/BasicDecimal"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"

class DragVelocityBehavior
    @@instance = DragVelocityBehavior.new()
end

