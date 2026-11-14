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
        BaseMenuBehavior.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        BaseMenuBehavior.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = BaseMenuBehavior.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BaseMenuBehavior"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :DisplayChangeEvent, "org/allbinary/graphics/displayable/event/DisplayChangeEvent"
autoload :NullPaintable, "org/allbinary/graphics/paint/NullPaintable"
autoload :AllBinaryGameCanvas, "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas"

begin
    BaseMenuBehavior.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

