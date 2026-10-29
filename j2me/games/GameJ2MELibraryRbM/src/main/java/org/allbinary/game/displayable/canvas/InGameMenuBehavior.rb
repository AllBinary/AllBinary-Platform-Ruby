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

require "org/allbinary/game/displayable/canvas/BaseMenuBehavior"

class InGameMenuBehavior < BaseMenuBehavior
    

    def self.getInstance()
        return InGameMenuBehavior.instanceC
    end
    

    # throws Exception
    def onDisplayChangeEvent(allBinaryGameCanvas, displayChangeEvent)
        allBinaryGameCanvas.updateMenuFromEvent(displayChangeEvent)
    end
    

    def initSpecialPaint(allBinaryGameCanvas)
        allBinaryGameCanvas.setNonBotPaintableP(GameCanvasNonBotPaintable.new(allBinaryGameCanvas))
    end
    

    # throws Exception
    def initMenu(allBinaryGameCanvas)
        allBinaryGameCanvas.initMenu2()
    end
    

    # throws Exception
    def updateMenu(allBinaryGameCanvas)
        allBinaryGameCanvas.initMenu2()
    end
    

    # throws Exception
    def popupMenu(allBinaryGameCanvas)
        allBinaryGameCanvas.popupMenu2()
    end
    

    def closeMenu(allBinaryGameCanvas)
        allBinaryGameCanvas.closeMenu2()
    end

    def self.instanceC()
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        @@instanceC = value
    end
end

require "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
require "org/allbinary/game/displayable/canvas/GameCanvasNonBotPaintable"

class InGameMenuBehavior
    @@instanceC = InGameMenuBehavior.new()
end

