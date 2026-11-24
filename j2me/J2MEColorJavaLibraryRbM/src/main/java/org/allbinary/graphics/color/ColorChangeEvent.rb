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
# package org.allbinary.graphics.color

require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/AllBinaryEventObject"

module ::Org; module Allbinary; module Graphics; module Color

class ColorChangeEvent < ::Org::Allbinary::Logic::Util::Event::AllBinaryEventObject
    attr_accessor :basicColor

    def jfields_org_allbinary_graphics_color_ColorChangeEvent
        @basicColor = BasicColorFactory.getInstance().WHITE
    end
    

    def initialize(anyType)
        super(anyType)
        jfields_org_allbinary_graphics_color_ColorChangeEvent
    end
    

    def setBasicColorP(basicColor)
        @basicColor = basicColor
    end
    java_overload :setBasicColorP, 1
    

    def getBasicColorP()
        return @basicColor
    end
    java_overload :getBasicColorP, 0
end

autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false)
autoload :BasicColorFactory, "org/allbinary/graphics/color/BasicColorFactory" unless const_defined?(:BasicColorFactory, false)

end; end; end; end

