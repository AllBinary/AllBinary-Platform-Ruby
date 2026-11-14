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
        InGameMenuBehavior.java_static_fields unless @java_static_fields_started
        return defined?(@@instanceC) ? @@instanceC : nil
    end

    def self.instanceC=(value)
        InGameMenuBehavior.java_static_fields unless @java_static_fields_started
        @@instanceC = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instanceC = InGameMenuBehavior.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InGameMenuBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"
autoload :GameCanvasNonBotPaintable, "org/allbinary/game/displayable/canvas/GameCanvasNonBotPaintable"

begin
    InGameMenuBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

