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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class BasicHudFactory
    @@instance = BasicHudFactory.new()
end

