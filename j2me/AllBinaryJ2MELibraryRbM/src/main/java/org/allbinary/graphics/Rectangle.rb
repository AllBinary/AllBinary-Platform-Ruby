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
# package org.allbinary.graphics


module ::Org; module Allbinary; module Graphics

class Rectangle
    attr_accessor :point, :width, :height

    def jfields_org_allbinary_graphics_Rectangle
        @point = nil unless instance_variable_defined?(:@point)
        @width = nil unless instance_variable_defined?(:@width)
        @height = nil unless instance_variable_defined?(:@height)
    end
    

    def initialize(point, width, height)
        jfields_org_allbinary_graphics_Rectangle
        @point = point
        @width = width
        @height = height
    end
    

    def getPoint()
        return @point
    end
    

    def setPoint(point)
        @point = point
    end
    

    def getMaxX()
        return @point.getX() + @width
    end
    

    def getMaxY()
        return @point.getY() + @height
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
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.getPoint().to_s)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().WIDTH_LABEL)
        stringBuffer.appendint(self.getWidth())
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
        stringBuffer.append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().HEIGHT_LABEL)
        stringBuffer.appendint(self.getHeight())
        stringBuffer.append(" MaxX: ")
        stringBuffer.appendint(self.getMaxX())
        stringBuffer.append(" MaxY: ")
        stringBuffer.appendint(self.getMaxY())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
autoload :GPoint, "org/allbinary/graphics/GPoint" unless const_defined?(:GPoint, false)

end; end; end

