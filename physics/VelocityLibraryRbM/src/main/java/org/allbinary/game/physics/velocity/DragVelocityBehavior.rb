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
        DragVelocityBehavior.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        DragVelocityBehavior.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = DragVelocityBehavior.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "DragVelocityBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicDecimal, "org/allbinary/logic/math/BasicDecimal"
autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties"

begin
    DragVelocityBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

