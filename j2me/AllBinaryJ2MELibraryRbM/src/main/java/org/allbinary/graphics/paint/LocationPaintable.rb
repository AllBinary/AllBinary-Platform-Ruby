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
# package org.allbinary.graphics.paint

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/LocationPaintableInterface"

class LocationPaintable
    include LocationPaintableInterface
    

    def self.getInstance()
        return LocationPaintable.instance
    end
    

    def paintXY(graphics, x, y)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

class LocationPaintable
    @@instance = LocationPaintable.new()
end

