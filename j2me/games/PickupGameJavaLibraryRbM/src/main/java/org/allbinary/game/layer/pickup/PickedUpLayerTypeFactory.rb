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
# package org.allbinary.game.layer.pickup


class PickedUpLayerTypeFactory
    attr_accessor :NONE, :BEAM, :MINE, :PROJECTILE, :ENHANCEMENT, :MORPH, :PART, :HEAL, :LIFE, :POINTS

    def initialize_fields
        @NONE = PickedUpLayerType.new(StringUtil.getInstance().NULL_STRING)
        @BEAM = PickedUpLayerType.new("BEAM")
        @MINE = PickedUpLayerType.new("MINE")
        @PROJECTILE = PickedUpLayerType.new("PROJECTILE")
        @ENHANCEMENT = PickedUpLayerType.new("Enhancement")
        @MORPH = PickedUpLayerType.new("Morph")
        @PART = PickedUpLayerType.new("Part")
        @HEAL = PickedUpLayerType.new("Heal")
        @LIFE = PickedUpLayerType.new("Life")
        @POINTS = PickedUpLayerType.new("Points")
    end

    def initialize
        initialize_fields
    end
    

    def self.getInstance()
        return PickedUpLayerTypeFactory.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/game/layer/pickup/PickedUpLayerType"

class PickedUpLayerTypeFactory
    @@instance = PickedUpLayerTypeFactory.new()
end

