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


module ::Org; module Allbinary; module Game; module Layer; module Pickup

class PickedUpLayerTypeFactory
    attr_accessor :NONE, :BEAM, :MINE, :PROJECTILE, :ENHANCEMENT, :MORPH, :PART, :HEAL, :LIFE, :POINTS

    def jfields_org_allbinary_game_layer_pickup_PickedUpLayerTypeFactory
        @NONE = PickedUpLayerType.new(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().NULL_STRING)
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
        jfields_org_allbinary_game_layer_pickup_PickedUpLayerTypeFactory
    end
    

    def self.getInstance()
        return PickedUpLayerTypeFactory.instance
    end

    def self.instance()
        PickedUpLayerTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        PickedUpLayerTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = PickedUpLayerTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "PickedUpLayerTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
autoload :PickedUpLayerType, "org/allbinary/game/layer/pickup/PickedUpLayerType" unless const_defined?(:PickedUpLayerType, false)

begin
    PickedUpLayerTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

