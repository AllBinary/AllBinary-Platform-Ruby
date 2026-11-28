# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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
# package org.allbinary.media.graphics.geography.map.topview


module ::Org; module Allbinary; module Media; module Graphics; module Geography; module Map; module Topview

class BasicTopViewGeographicMapStrings
    attr_accessor :DEFAULT, :OTHER, :WALL, :OFF_MAP, :FLOOR, :DOOR, :STAIRS_UP, :STAIRS_DOWN

    def jfields_org_allbinary_media_graphics_geography_map_topview_BasicTopViewGeographicMapStrings
        @DEFAULT = "Default"
        @OTHER = "Other"
        @WALL = "Wall"
        @OFF_MAP = "OffMap"
        @FLOOR = "Floor"
        @DOOR = "Door"
        @STAIRS_UP = "StairsUp"
        @STAIRS_DOWN = "StairsDown"
    end

    def initialize
        jfields_org_allbinary_media_graphics_geography_map_topview_BasicTopViewGeographicMapStrings
    end
    

    def self.getInstance()
        return @@instance
    end

    def self.instance()
        BasicTopViewGeographicMapStrings.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BasicTopViewGeographicMapStrings.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BasicTopViewGeographicMapStrings.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicTopViewGeographicMapStrings"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

begin
    BasicTopViewGeographicMapStrings.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

