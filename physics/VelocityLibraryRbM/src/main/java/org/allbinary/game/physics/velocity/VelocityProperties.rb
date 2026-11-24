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

require "java/lang/JavaOverload"
require "org/allbinary/game/physics/velocity/BasicVelocityProperties"
require "org/allbinary/game/physics/velocity/VelocityInterface"

module ::Org; module Allbinary; module Game; module Physics; module Velocity

class VelocityProperties < BasicVelocityProperties
    include VelocityInterface
    attr_accessor :maxForwardVelocity, :maxReverseVelocity

    def jfields_org_allbinary_game_physics_velocity_VelocityProperties
        @maxForwardVelocity = 0 unless instance_variable_defined?(:@maxForwardVelocity)
        @maxReverseVelocity = 0 unless instance_variable_defined?(:@maxReverseVelocity)
    end
    

    def initialize(maxForwardVelocity, maxReverseVelocity)
        super()
        jfields_org_allbinary_game_physics_velocity_VelocityProperties
        self.setMaxForwardVelocity(maxForwardVelocity)
        self.setMaxReverseVelocity(maxReverseVelocity)
    end
    

    def getMaxForwardVelocity()
        return @maxForwardVelocity
    end
    java_overload :getMaxForwardVelocity, 0
    

    def setMaxForwardVelocity(maxForwardVelocity)
        @maxForwardVelocity = maxForwardVelocity
    end
    java_overload :setMaxForwardVelocity, 1
    

    def getMaxReverseVelocity()
        return @maxReverseVelocity
    end
    java_overload :getMaxReverseVelocity, 0
    

    def setMaxReverseVelocity(maxReverseVelocity)
        @maxReverseVelocity = maxReverseVelocity
    end
    java_overload :setMaxReverseVelocity, 1
    

    def limitMaxXYForwardVelocity()
        self.limitMaxXYVelocity(self.getMaxForwardVelocity())
    end
    java_overload :limitMaxXYForwardVelocity, 0
    

    def limitMaxXYReverseVelocity()
        self.limitMaxXYVelocity(self.getMaxReverseVelocity())
    end
    java_overload :limitMaxXYReverseVelocity, 0
    

    def limitMaxYForwardVelocity()
        self.limitMaxYVelocity(self.getMaxForwardVelocity())
    end
    java_overload :limitMaxYForwardVelocity, 0
    

    def limitMaxYReverseVelocity()
        self.limitMaxYVelocity(self.getMaxReverseVelocity())
    end
    java_overload :limitMaxYReverseVelocity, 0
    

    def limitMaxXForwardVelocity()
        self.limitMaxXVelocity(self.getMaxForwardVelocity())
    end
    java_overload :limitMaxXForwardVelocity, 0
    

    def limitMaxXReverseVelocity()
        self.limitMaxXVelocity(self.getMaxReverseVelocity())
    end
    java_overload :limitMaxXReverseVelocity, 0
    

    def isOverXYMaxForwardVelocity()
        return self.isOverXYMaxVelocity(self.getMaxForwardVelocity())
    end
    java_overload :isOverXYMaxForwardVelocity, 0
    

    def isOverXYMaxReverseVelocity()
        return self.isOverXYMaxVelocity(self.getMaxReverseVelocity())
    end
    java_overload :isOverXYMaxReverseVelocity, 0
    

    def limitXYToForwardAndReverseMaxVelocity()
        self.limitMaxXYForwardVelocity()
        self.limitMaxXYReverseVelocity()
    end
    java_overload :limitXYToForwardAndReverseMaxVelocity, 0
    

    def limitMaxXYVelocity(maxVelocity)
        self.limitMaxXVelocity(maxVelocity)
        self.limitMaxYVelocity(maxVelocity)
    end
    java_overload :limitMaxXYVelocity, 1
    

    def limitMaxPositiveYVelocity(maxVelocity)
        if @velocityYBasicDecimal.getUnscaled() > maxVelocity
            @velocityYBasicDecimal.setint(maxVelocity)
        end
    end
    java_overload :limitMaxPositiveYVelocity, 1
    

    def limitMaxNegativeYVelocity(maxVelocity)
        if @velocityYBasicDecimal.getUnscaled() < -maxVelocity
            @velocityYBasicDecimal.setint(-maxVelocity)
        end
    end
    java_overload :limitMaxNegativeYVelocity, 1
    

    def limitMaxYVelocity(maxVelocity)
        self.limitMaxPositiveYVelocity(maxVelocity)
        self.limitMaxNegativeYVelocity(maxVelocity)
    end
    java_overload :limitMaxYVelocity, 1
    

    def limitMaxXVelocity(maxVelocity)
        if @velocityXBasicDecimal.getUnscaled() > maxVelocity
            @velocityXBasicDecimal.setint(maxVelocity)
        end
        if @velocityXBasicDecimal.getUnscaled() < -maxVelocity
            @velocityXBasicDecimal.setint(-maxVelocity)
        end
    end
    java_overload :limitMaxXVelocity, 1
    

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
    java_overload :isOverXYMaxVelocity, 1
    

    def setVelocityi(magnitude, angle, otherAngle)
        VelocityProperties.superclass.java_super_method(:setVelocityi, 3).bind(self).call(magnitude, angle, otherAngle)
        self.limitXYToForwardAndReverseMaxVelocity()
    end
    java_overload :setVelocityi, 3
    

    def addVelocityi(magnitude, angle, otherAngle)
        VelocityProperties.superclass.java_super_method(:addVelocityi, 3).bind(self).call(magnitude, angle, otherAngle)
        self.limitXYToForwardAndReverseMaxVelocity()
    end
    java_overload :addVelocityi, 3

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_VELOCITY_PROPERTIES, VelocityProperties.new(0, 0))
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "VelocityProperties"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_VELOCITY_PROPERTIES].include?(name)
        end
        super
    end
end

begin
    VelocityProperties.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

