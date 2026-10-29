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

# require "javax/microedition/lcdui/Graphics"
require "org/allbinary/graphics/paint/Paintable"

class MainGameDemoStatePaintable < Paintable
    attr_accessor :ownershipPaintableInterface, :menuPaintableInterface

    def initialize_fields
        @ownershipPaintableInterface = nil
        @menuPaintableInterface = nil
    end
    

    def initialize(ownershipPaintableInterface, menuPaintableInterface)
        super()
        initialize_fields
        @ownershipPaintableInterface = ownershipPaintableInterface
        @menuPaintableInterface = menuPaintableInterface
    end
    

    def paint(graphics)
        @menuPaintableInterface.paint(graphics)
        @ownershipPaintableInterface.paint(graphics)
    end
    

    def getOwnershipPaintableInterface()
        return @ownershipPaintableInterface
    end
    

    def getMenuPaintableInterface()
        return @menuPaintableInterface
    end
end

