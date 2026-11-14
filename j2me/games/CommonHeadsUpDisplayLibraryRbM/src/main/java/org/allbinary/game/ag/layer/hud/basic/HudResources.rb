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
# package org.allbinary.game.ag.layer.hud.basic


class HudResources
    attr_accessor :RESOURCE_LIFE, :RESOURCE_HEALTH

    def initialize_fields
        @RESOURCE_LIFE = "/hud_life_10_by_10.png"
        @RESOURCE_HEALTH = "/hud_health_10_by_10.png"
    end
    

    def self.getInstance()
        return HudResources.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        HudResources.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        HudResources.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = HudResources.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "HudResources"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    HudResources.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

