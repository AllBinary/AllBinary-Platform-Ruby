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

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/LocationPaintable"

module ::Org; module Allbinary; module Graphics; module Paint

class StringLocationPaintable < LocationPaintable
    attr_accessor :value

    def jfields_org_allbinary_graphics_paint_StringLocationPaintable
        @value = nil unless instance_variable_defined?(:@value)
    end
    

    def initialize(value)
        super()
        jfields_org_allbinary_graphics_paint_StringLocationPaintable
        @value = value
    end
    

    def paintXY(graphics, x, y)
        graphics.drawString(@value, x, y, 0)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end

end; end; end; end

