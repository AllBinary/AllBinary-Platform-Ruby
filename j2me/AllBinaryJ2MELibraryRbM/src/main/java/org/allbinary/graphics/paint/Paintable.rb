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
require "org/allbinary/graphics/paint/PaintableInterface"

module ::Org; module Allbinary; module Graphics; module Paint

class Paintable
    include PaintableInterface
    

    def setBasicColorP(basicColor)
    end
    java_overload :setBasicColorP, 1
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def paintThreed(graphics)
    end
    java_overload :paintThreed, 1
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Color; autoload :BasicColor, "org/allbinary/graphics/color/BasicColor" unless const_defined?(:BasicColor, false); end; end; end; end

end; end; end; end

