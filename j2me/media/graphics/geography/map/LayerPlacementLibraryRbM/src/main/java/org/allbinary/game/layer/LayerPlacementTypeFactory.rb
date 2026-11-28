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


module ::Org; module Allbinary; module Game; module Layer

class LayerPlacementTypeFactory
    attr_accessor :MAP, :LEFT, :DOWN, :UP, :RIGHT

    def jfields_org_allbinary_game_layer_LayerPlacementTypeFactory
        @MAP = LayerPlacementType.new(2147483647)
        @LEFT = LayerPlacementType.new(::Org::Allbinary::Direction::DirectionFactory.getInstance().LEFT.getValue())
        @DOWN = LayerPlacementType.new(::Org::Allbinary::Direction::DirectionFactory.getInstance().DOWN.getValue())
        @UP = LayerPlacementType.new(::Org::Allbinary::Direction::DirectionFactory.getInstance().UP.getValue())
        @RIGHT = LayerPlacementType.new(::Org::Allbinary::Direction::DirectionFactory.getInstance().RIGHT.getValue())
    end

    def initialize
        jfields_org_allbinary_game_layer_LayerPlacementTypeFactory
    end
    

    def self.getInstance()
        return @@instance
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

module ::Org; module Allbinary; module Direction; autoload :DirectionFactory, "org/allbinary/direction/DirectionFactory" unless const_defined?(:DirectionFactory, false); end; end; end
autoload :LayerPlacementType, "org/allbinary/game/layer/LayerPlacementType" unless const_defined?(:LayerPlacementType, false)

begin
    LayerPlacementTypeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

