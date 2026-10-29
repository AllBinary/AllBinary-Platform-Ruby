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
# package org.allbinary.game.combat.damage


class ExplosionResources
    attr_accessor :EXPLOSION_90_RESOURCE, :EXPLOSION_60_RESOURCE, :HALF_EXPLOSION_RESOURCE, :THIRD_EXPLOSION_RESOURCE

    def initialize_fields
        @EXPLOSION_90_RESOURCE = "/explosion_sprite_90_by_90.png"
        @EXPLOSION_60_RESOURCE = "/explosion_sprite_60_by_60.png"
        @HALF_EXPLOSION_RESOURCE = "/explosion_sprite_30_by_30.png"
        @THIRD_EXPLOSION_RESOURCE = "/explosion_sprite_15_by_15.png"
    end
    

    def self.getInstance()
        return ExplosionResources.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class ExplosionResources
    @@instance = ExplosionResources.new()
end

