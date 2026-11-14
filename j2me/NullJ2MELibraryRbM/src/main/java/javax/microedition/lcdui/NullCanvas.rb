# Generated Code Do Not Modify
# frozen_string_literal: false
# package javax.microedition.lcdui

require "javax/microedition/lcdui/Canvas"

class NullCanvas < Canvas
    

    def initialize()
        super()
    end
    

    def setFullScreenMode(mode)
    end
    

    def sizeChanged(w, h)
    end
    

    def getCommandStack()
        raise RuntimeError.new()
    end
    

    def isCommand(command)
        raise RuntimeError.new()
    end
    

    def addCommand(command)
    end
    

    def removeCommand(command)
    end
    

    def removeAllCommands()
    end
    

    def setCommandListener(l)
    end
    

    def getCustomCommandListener()
        raise RuntimeError.new()
    end
    

    def isPaused()
        raise RuntimeError.new()
    end
    

    def removePauseCommand()
    end
    

    def pause()
    end
    

    def unPause()
    end
    

    # throws Exception
    def process()
    end
    

    def paint(graphics)
    end
    

    def destroy()
    end
    

    def setPaused(isPaused)
        raise RuntimeError.new()
    end
    

    def pointerDragged(x, y)
    end
    

    def pointerPressed(x, y)
    end
    

    def pointerReleased(x, y)
    end

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

autoload :Stack, "java/util/Stack"
autoload :Command, "javax/microedition/lcdui/Command"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :Graphics, "javax/microedition/lcdui/Graphics"

begin
    NullCanvas.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

