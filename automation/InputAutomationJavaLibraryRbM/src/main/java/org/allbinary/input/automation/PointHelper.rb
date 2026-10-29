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
# package org.allbinary.input.automation

# require "java/awt"

class PointHelper
    

    def initialize()
    end
    

    def self.getCenterPoint(rectangle)
        x = rectangle.getX() + rectangle.getWidth() / PointHelper.two
        y = rectangle.getY() + rectangle.getHeight() / PointHelper.two
        return PointFactory.getInstance((x).to_i, (y).to_i)
    end

    def self.two()
        return defined?(@@two) ? @@two : nil
    end

    def self.two=(value)
        @@two = value
    end
end

require "org/allbinary/input/automation/PointFactory"

class PointHelper
    @@two = 2.0
end

