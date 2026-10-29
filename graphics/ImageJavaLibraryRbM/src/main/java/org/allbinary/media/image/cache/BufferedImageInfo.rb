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
# package org.allbinary.media.image.cache


class BufferedImageInfo
    attr_accessor :width, :height, :type

    def initialize_fields
        @width = nil
        @height = nil
        @type = nil
    end
    

    def initialize(width, height, type)
        initialize_fields
        @width = width
        @height = height
        @type = type
    end
    

    def getWidth()
        return @width
    end
    

    def setWidth(width)
        @width = width
    end
    

    def getHeight()
        return @height
    end
    

    def setHeight(height)
        @height = height
    end
    

    def getType()
        return @type
    end
    

    def setType(type)
        @type = type
    end
    

    def toString()
        commonLabels = CommonLabels.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append("BufferedImageInfo -")
        stringBuffer.append(commonLabels.WIDTH_LABEL)
        stringBuffer.appendint(self.getWidth())
        stringBuffer.append(commonLabels.HEIGHT_LABEL)
        stringBuffer.appendint(self.getHeight())
        stringBuffer.append(" Type: ")
        stringBuffer.appendint(self.getType())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonLabels"

