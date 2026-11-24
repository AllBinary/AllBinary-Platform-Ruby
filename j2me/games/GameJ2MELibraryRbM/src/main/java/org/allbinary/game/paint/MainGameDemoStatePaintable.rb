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
# package org.allbinary.game.paint

require "java/lang/JavaOverload"
require "org/allbinary/graphics/paint/Paintable"

module ::Org; module Allbinary; module Game; module Paint

class MainGameDemoStatePaintable < ::Org::Allbinary::Graphics::Paint::Paintable
    attr_accessor :ownershipPaintableInterface, :menuPaintableInterface

    def jfields_org_allbinary_game_paint_MainGameDemoStatePaintable
        @ownershipPaintableInterface = nil unless instance_variable_defined?(:@ownershipPaintableInterface)
        @menuPaintableInterface = nil unless instance_variable_defined?(:@menuPaintableInterface)
    end
    

    def initialize(ownershipPaintableInterface, menuPaintableInterface)
        super()
        jfields_org_allbinary_game_paint_MainGameDemoStatePaintable
        @ownershipPaintableInterface = ownershipPaintableInterface
        @menuPaintableInterface = menuPaintableInterface
    end
    

    def paint(graphics)
        @menuPaintableInterface.paint(graphics)
        @ownershipPaintableInterface.paint(graphics)
    end
    java_overload :paint, 1
    

    def getOwnershipPaintableInterface()
        return @ownershipPaintableInterface
    end
    java_overload :getOwnershipPaintableInterface, 0
    

    def getMenuPaintableInterface()
        return @menuPaintableInterface
    end
    java_overload :getMenuPaintableInterface, 0
end

module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end

end; end; end; end

