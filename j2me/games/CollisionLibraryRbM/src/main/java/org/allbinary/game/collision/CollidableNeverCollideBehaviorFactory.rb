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
# package org.allbinary.game.collision

require "org/allbinary/game/collision/CollidableBaseBehaviorFactory"

class CollidableNeverCollideBehaviorFactory < CollidableBaseBehaviorFactory
    attr_accessor :instance

    def initialize_fields
        @instance = CollidableNeverCollideBehavior.new(false)
    end

    def initialize
        super()
        initialize_fields
    end
    

    def self.getInstance()
        return CollidableNeverCollideBehaviorFactory.instanceC
    end
    

    def createBehavior()
        return @instance
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/game/collision/CollidableBaseBehavior"
require "org/allbinary/game/collision/CollidableNeverCollideBehavior"

class CollidableNeverCollideBehaviorFactory
    @@instanceC = CollidableNeverCollideBehaviorFactory.new()
end

