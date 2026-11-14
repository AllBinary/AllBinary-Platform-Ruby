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
        GravityUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        GravityUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = GravityUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "GravityUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicVelocityProperties, "org/allbinary/game/physics/velocity/BasicVelocityProperties"

begin
    GravityUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

