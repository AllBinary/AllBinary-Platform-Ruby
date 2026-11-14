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
# package org.allbinary.game.graphics.hud


class BasicHudFactory
    attr_accessor :DIRECTION_EXCEPTION, :VERTICAL, :HORIZONTAL, :BOTTOMLEFT, :BOTTOMRIGHT, :TOPLEFT, :TOPRIGHT, :BOTTOMCENTER, :TOPCENTER, :ABSOLUTE

    def initialize_fields
        @DIRECTION_EXCEPTION = "Only Horizontal Direction is Allowed Currently"
        @VERTICAL = 0
        @HORIZONTAL = 1
        @BOTTOMLEFT = 0
        @BOTTOMRIGHT = 1
        @TOPLEFT = 2
        @TOPRIGHT = 3
        @BOTTOMCENTER = 4
        @TOPCENTER = 5
        @ABSOLUTE = 6
    end
    

    def self.getInstance()
        return BasicHudFactory.instance
    end
    

    def initialize()
        initialize_fields
    end

    def self.instance()
        BasicHudFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicHudFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicHudFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicHudFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    BasicHudFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

