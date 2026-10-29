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
# package org.allbinary.game.physics.acceleration


class GravityUtil
    attr_accessor :GAME_GRAVITY_VELOCITY, :MAX_GAME_VELOCITY

    def initialize_fields
        @GAME_GRAVITY_VELOCITY = 1800
        @MAX_GAME_VELOCITY = 18000
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return GravityUtil.instance
    end
    

    def process(velocityProperties, customGravity)
        velocityProperties.getVelocityYBasicDecimalP().addint(customGravity)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/game/physics/velocity/BasicVelocityProperties"

class GravityUtil
    @@instance = GravityUtil.new()
end

