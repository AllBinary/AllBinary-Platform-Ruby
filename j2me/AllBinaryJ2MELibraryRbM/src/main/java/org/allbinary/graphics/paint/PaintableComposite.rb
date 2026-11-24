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
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Graphics; module Paint

class PaintableComposite < Paintable
    attr_accessor :paintableArray

    def jfields_org_allbinary_graphics_paint_PaintableComposite
        @paintableArray = nil unless instance_variable_defined?(:@paintableArray)
    end
    

    def initialize(paintableArray)
        super()
        jfields_org_allbinary_graphics_paint_PaintableComposite
        @paintableArray = paintableArray
    end
    

    def paint(graphics)
        (@paintableArray.length - 1).step(0, -(1)) do |index|
            @paintableArray[index].paint(graphics)
        end
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
        (@paintableArray.length - 1).step(0, -(1)) do |index|
            @paintableArray[index].paintThreed(graphics)
        end
    end
    java_overload :paintThreed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
autoload :PaintableInterface, "org/allbinary/graphics/paint/PaintableInterface" unless const_defined?(:PaintableInterface, false)

end; end; end; end

