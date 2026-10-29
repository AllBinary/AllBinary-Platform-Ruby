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


class NoMovementFactory
    attr_accessor :movement

    def initialize_fields
        @movement = Movement.new()
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return NoMovementFactory.instance
    end
    

    def getMovmentInstance()
        return @movement
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/physics/movement/Movement"

class NoMovementFactory
    @@instance = NoMovementFactory.new()
end

