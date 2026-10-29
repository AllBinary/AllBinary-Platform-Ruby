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
# package org.allbinary.game.displayable.canvas


class FormUtil
    

    def self.getInstance()
        return FormUtil.instance
    end
    

    def createFormRectangle()
        displayInfo = DisplayInfoSingleton.getInstance()
        pointFactory = PointFactory.getInstance()
        rectangle = Rectangle.new(pointFactory.createXY(30, 10), displayInfo.getLastWidth() - 30, displayInfo.getLastHeight() - 35)
        return rectangle
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/PointFactory"
require "org/allbinary/graphics/Rectangle"
require "org/allbinary/graphics/displayable/DisplayInfoSingleton"
require "org/allbinary/logic/communication/log/LogUtil"

class FormUtil
    @@instance = FormUtil.new()
end

