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

require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/game/physics/velocity/VelocityInterface"

class VelocityProperties < BasicVelocityProperties
    include VelocityInterface
    attr_accessor :maxForwardVelocity, :maxReverseVelocity

    def initialize_fields
        @maxForwardVelocity = 0
        @maxReverseVelocity = 0
    end
    

    def initialize(maxForwardVelocity, maxReverseVelocity)
        super()
        initialize_fields
        self.setMaxForwardVelocity(maxForwardVelocity)
        self.setMaxReverseVelocity(maxReverseVelocity)
    end
    

    def getMaxForwardVelocity()
        return @maxForwardVelocity
    end
    

    def setMaxForwardVelocity(maxForwardVelocity)
        @maxForwardVelocity = maxForwardVelocity
    end
    

    def getMaxReverseVelocity()
        return @maxReverseVelocity
    end
    

    def setMaxReverseVelocity(maxReverseVelocity)
        @maxReverseVelocity = maxReverseVelocity
    end
    

    def limitMaxXYForwardVelocity()
        self.limitMaxXYVelocity(self.getMaxForwardVelocity())
    end
    

    def limitMaxXYReverseVelocity()
        self.limitMaxXYVelocity(self.getMaxReverseVelocity())
    end
    

    def limitMaxYForwardVelocity()
        self.limitMaxYVelocity(self.getMaxForwardVelocity())
    end
    

    def limitMaxYReverseVelocity()
        self.limitMaxYVelocity(self.getMaxReverseVelocity())
    end
    

    def limitMaxXForwardVelocity()
        self.limitMaxXVelocity(self.getMaxForwardVelocity())
    end
    

    def limitMaxXReverseVelocity()
        self.limitMaxXVelocity(self.getMaxReverseVelocity())
    end
    

    def isOverXYMaxForwardVelocity()
        return self.isOverXYMaxVelocity(self.getMaxForwardVelocity())
    end
    

    def isOverXYMaxReverseVelocity()
        return self.isOverXYMaxVelocity(self.getMaxReverseVelocity())
    end
    

    def limitXYToForwardAndReverseMaxVelocity()
        self.limitMaxXYForwardVelocity()
        self.limitMaxXYReverseVelocity()
    end
    

    def limitMaxXYVelocity(maxVelocity)
        self.limitMaxXVelocity(maxVelocity)
        self.limitMaxYVelocity(maxVelocity)
    end
    

    def limitMaxPositiveYVelocity(maxVelocity)
        if @velocityYBasicDecimal.getUnscaled() > maxVelocity
            @velocityYBasicDecimal.setint(maxVelocity)
        end
    end
    

    def limitMaxNegativeYVelocity(maxVelocity)
        if @velocityYBasicDecimal.getUnscaled() < -maxVelocity
            @velocityYBasicDecimal.setint(-maxVelocity)
        end
    end
    

    def limitMaxYVelocity(maxVelocity)
        self.limitMaxPositiveYVelocity(maxVelocity)
        self.limitMaxNegativeYVelocity(maxVelocity)
    end
    

    def limitMaxXVelocity(maxVelocity)
        if @velocityXBasicDecimal.getUnscaled() > maxVelocity
            @velocityXBasicDecimal.setint(maxVelocity)
        end
        if @velocityXBasicDecimal.getUnscaled() < -maxVelocity
            @velocityXBasicDecimal.setint(-maxVelocity)
        end
    end
    

    def isOverXYMaxVelocity(maxVelocity)
        if @velocityXBasicDecimal.getUnscaled() > maxVelocity
            return true
        end
        if @velocityXBasicDecimal.getUnscaled() < -maxVelocity
            return true
        end
        if @velocityYBasicDecimal.getUnscaled() > maxVelocity
            return true
        end
        if @velocityYBasicDecimal.getUnscaled() < -maxVelocity
            return true
        end
        return false
    end
    

    def setVelocityi(magnitude, angle, otherAngle)
        super(magnitude, angle, otherAngle)
        self.limitXYToForwardAndReverseMaxVelocity()
    end
    

    def addVelocityi(magnitude, angle, otherAngle)
        super(magnitude, angle, otherAngle)
        self.limitXYToForwardAndReverseMaxVelocity()
    end
end

class VelocityProperties
    NULL_VELOCITY_PROPERTIES = VelocityProperties.new(0, 0)
end

