# Generated Code Do Not Modify
# frozen_string_literal: false
# package javax.microedition.lcdui


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
end

require "java/util/Stack"

class NullCanvas
    NULL_CANVAS = NullCanvas.new()
end

