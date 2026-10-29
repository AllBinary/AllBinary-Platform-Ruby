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
# package org.allbinary.game.layer


class LayerPlacementTypeFactory
    attr_accessor :MAP, :LEFT, :DOWN, :UP, :RIGHT

    def initialize_fields
        @MAP = LayerPlacementType.new(2147483647)
        @LEFT = LayerPlacementType.new(DirectionFactory.getInstance().LEFT.getValue())
        @DOWN = LayerPlacementType.new(DirectionFactory.getInstance().DOWN.getValue())
        @UP = LayerPlacementType.new(DirectionFactory.getInstance().UP.getValue())
        @RIGHT = LayerPlacementType.new(DirectionFactory.getInstance().RIGHT.getValue())
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return LayerPlacementTypeFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/direction/DirectionFactory"
require "org/allbinary/game/layer/LayerPlacementType"

class LayerPlacementTypeFactory
    @@instance = LayerPlacementTypeFactory.new()
end

