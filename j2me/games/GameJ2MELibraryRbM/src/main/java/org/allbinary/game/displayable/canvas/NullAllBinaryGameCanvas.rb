# 
# AllBinary Open License Version 1 
# Copyright (c) 2025 AllBinary 
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

require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface"

class NullAllBinaryGameCanvas
    include AllBinaryGameCanvasInterface
    

    def getLayerManager()
        raise RuntimeError.new()
    end
    

    def addCommand(cmd)
        raise RuntimeError.new()
    end
    

    def getHeight()
        raise RuntimeError.new()
    end
    

    def getWidth()
        raise RuntimeError.new()
    end
    

    def removeCommand(cmd)
        raise RuntimeError.new()
    end
    

    def setCommandListener(l)
        raise RuntimeError.new()
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ALLBINARY_GAME_CANVAS, NullAllBinaryGameCanvas.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullAllBinaryGameCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ALLBINARY_GAME_CANVAS].include?(name)
        end
        super
    end
end

autoload :Command, "javax/microedition/lcdui/Command"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager"

begin
    NullAllBinaryGameCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

