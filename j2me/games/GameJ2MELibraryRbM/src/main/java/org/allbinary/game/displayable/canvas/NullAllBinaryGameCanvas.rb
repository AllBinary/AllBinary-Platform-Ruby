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

require "java/lang/JavaOverload"
require "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface"

module ::Org; module Allbinary; module Game; module Displayable; module Canvas

class NullAllBinaryGameCanvas
    include AllBinaryGameCanvasInterface
    

    def getLayerManager()
        raise RuntimeError.new()
    end
    java_overload :getLayerManager, 0
    

    def addCommand(cmd)
        raise RuntimeError.new()
    end
    java_overload :addCommand, 1
    

    def getHeight()
        raise RuntimeError.new()
    end
    java_overload :getHeight, 0
    

    def getWidth()
        raise RuntimeError.new()
    end
    java_overload :getWidth, 0
    

    def removeCommand(cmd)
        raise RuntimeError.new()
    end
    java_overload :removeCommand, 1
    

    def setCommandListener(l)
        raise RuntimeError.new()
    end
    java_overload :setCommandListener, 1

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

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Org; module Allbinary; module Game; module Layer; autoload :AllBinaryGameLayerManager, "org/allbinary/game/layer/AllBinaryGameLayerManager" unless const_defined?(:AllBinaryGameLayerManager, false); end; end; end; end

begin
    NullAllBinaryGameCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

