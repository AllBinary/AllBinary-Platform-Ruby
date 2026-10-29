# 
# AllBinary Open License Version 1 
# Copyright (c) 2022 AllBinary 
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


class BaseMenuBehavior
    

    def self.getInstance()
        return BaseMenuBehavior.instance
    end
    

    # throws Exception
    def onDisplayChangeEvent(allBinaryGameCanvas, displayChangeEvent)
    end
    

    def initSpecialPaint(allBinaryGameCanvas)
        allBinaryGameCanvas.setNonBotPaintableP(NullPaintable.getInstance())
    end
    

    # throws Exception
    def initMenu(allBinaryGameCanvas)
    end
    

    # throws Exception
    def updateMenu(allBinaryGameCanvas)
    end
    

    # throws Exception
    def popupMenu(allBinaryGameCanvas)
    end
    

    def closeMenu(allBinaryGameCanvas)
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/graphics/paint/NullPaintable"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

class BaseMenuBehavior
    @@instance = BaseMenuBehavior.new()
end

