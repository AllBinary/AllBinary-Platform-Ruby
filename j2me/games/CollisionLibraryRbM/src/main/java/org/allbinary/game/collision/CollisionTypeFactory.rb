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


class CollisionTypeFactory
    attr_accessor :NONE, :DAMAGE, :PICKUP, :COLLISION

    def initialize_fields
        @NONE = CollisionType.new("None")
        @DAMAGE = CollisionType.new("Damage")
        @PICKUP = CollisionType.new("Pickup")
        @COLLISION = CollisionType.new("Collision")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return CollisionTypeFactory::SINGLETON
    end
end

require "org/allbinary/game/collision/CollisionType"

class CollisionTypeFactory
    SINGLETON = CollisionTypeFactory.new()
end

