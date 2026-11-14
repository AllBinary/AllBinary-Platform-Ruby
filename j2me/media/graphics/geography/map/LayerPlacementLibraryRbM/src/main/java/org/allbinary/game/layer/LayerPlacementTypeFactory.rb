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
        LayerPlacementTypeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        LayerPlacementTypeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = LayerPlacementTypeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "LayerPlacementTypeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory"
autoload :LayerPlacementType, "org/allbinary/game/layer/LayerPlacementType"

begin
    LayerPlacementTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

