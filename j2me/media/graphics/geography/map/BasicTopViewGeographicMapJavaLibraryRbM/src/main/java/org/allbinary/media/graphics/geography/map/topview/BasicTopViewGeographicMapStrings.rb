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


class BasicTopViewGeographicMapStrings
    attr_accessor :DEFAULT, :OTHER, :WALL, :OFF_MAP, :FLOOR, :DOOR, :STAIRS_UP, :STAIRS_DOWN

    def initialize_fields
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
        initialize_fields
    end
    

    def self.getInstance()
        return BasicTopViewGeographicMapStrings.instance
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class BasicTopViewGeographicMapStrings
    @@instance = BasicTopViewGeographicMapStrings.new()
end

