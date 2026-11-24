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
# package org.allbinary.game.health

require "java/lang/JavaOverload"
require "org/allbinary/game/health/HealthBarAnimation"

module ::Org; module Allbinary; module Game; module Health

class HealthBarTwodAnimation < HealthBarAnimation
    

    def initialize(layerInterface, location)
        super(layerInterface, location)
    end
    

    def paintXY(graphics, x, y)
        ax = @allbinaryLayer.getViewPosition().getX()
        @basicSetColorUtil.setBasicColorP3(graphics, @basicColor, @colorP)
        graphics.fillRect(ax, self.getY() - 1, @x2, @thickness)
    end
    java_overload :paintXY, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Org; module Allbinary; module Layer; autoload :AllBinaryLayer, "org/allbinary/layer/AllBinaryLayer" unless const_defined?(:AllBinaryLayer, false); end; end; end

end; end; end; end

