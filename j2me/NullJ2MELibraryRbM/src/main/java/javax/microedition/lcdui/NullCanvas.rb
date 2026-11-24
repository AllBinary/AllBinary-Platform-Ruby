# Generated Code Do Not Modify
# frozen_string_literal: false
# package javax.microedition.lcdui

require "java/lang/JavaOverload"
require "javax/microedition/lcdui/Canvas"

module ::Javax; module Microedition; module Lcdui

class NullCanvas < Canvas
    

    def initialize()
        super()
    end
    

    def setFullScreenMode(mode)
    end
    java_overload :setFullScreenMode, 1
    

    def sizeChanged(w, h)
    end
    java_overload :sizeChanged, 2
    

    def getCommandStack()
        raise RuntimeError.new()
    end
    java_overload :getCommandStack, 0
    

    def isCommand(command)
        raise RuntimeError.new()
    end
    java_overload :isCommand, 1
    

    def addCommand(command)
    end
    java_overload :addCommand, 1
    

    def removeCommand(command)
    end
    java_overload :removeCommand, 1
    

    def removeAllCommands()
    end
    java_overload :removeAllCommands, 0
    

    def setCommandListener(l)
    end
    java_overload :setCommandListener, 1
    

    def getCustomCommandListener()
        raise RuntimeError.new()
    end
    java_overload :getCustomCommandListener, 0
    

    def isPaused()
        raise RuntimeError.new()
    end
    java_overload :isPaused, 0
    

    def removePauseCommand()
    end
    java_overload :removePauseCommand, 0
    

    def pause()
    end
    java_overload :pause, 0
    

    def unPause()
    end
    java_overload :unPause, 0
    

    # throws Exception
    def process()
    end
    java_overload :process, 0
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def destroy()
    end
    java_overload :destroy, 0
    

    def setPaused(isPaused)
        raise RuntimeError.new()
    end
    java_overload :setPaused, 1
    

    def pointerDragged(x, y)
    end
    java_overload :pointerDragged, 2
    

    def pointerPressed(x, y)
    end
    java_overload :pointerPressed, 2
    

    def pointerReleased(x, y)
    end
    java_overload :pointerReleased, 2

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_CANVAS, NullCanvas.new())
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "NullCanvas"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_CANVAS].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :Stack, "java/util/Stack" unless const_defined?(:Stack, false); end; end
autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false)
autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false)
autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false)

begin
    NullCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

