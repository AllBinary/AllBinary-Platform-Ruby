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
# package org.allbinary.graphics.displayable

require "java/lang/Object"
require "javax/microedition/lcdui/Canvas"
require "org/allbinary/graphics/displayable/command/MyCommandInterface"
require "org/allbinary/graphics/displayable/DisplayableInterface"

class MyCanvas < Canvas
    include DisplayableInterface
    include MyCommandInterface
    attr_accessor :logUtil, :commonStrings, :canvasStrings, :stringUtil, :displayInfo, :name, :childNameList, :commandStack, :commandListener, :paused, :touchME

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @canvasStrings = CanvasStrings.getInstance()
        @stringUtil = StringUtil.getInstance()
        @displayInfo = DisplayInfoSingleton.getInstance()
        @name = nil
        @childNameList = nil
        @commandStack = nil
        @commandListener = NullCommandListener::NULL_COMMAND_LISTENER
        @paused = false
        @touchME = TouchJ2ME.new()
    end
    

    def initialize(name, childNameList)
        super()
        initialize_fields
        @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        @displayInfo.update(self, @canvasStrings.CONSTRUCTOR)
        @name = name
        @childNameList = childNameList
        @commandStack = StdUtil.getInstance().createStack()
    end
    

    def getWidth()
        return super()
    end
    

    def getHeight()
        return super()
    end
    

    def setFullScreenMode(mode)
        super(mode)
        @displayInfo.update(self, @canvasStrings.SET_FULL_SCREEN_MODE)
    end
    

    def sizeChanged(w, h)
        @displayInfo.update(self, @canvasStrings.SIZE_CHANGED)
    end
    

    def getCommandStack()
        return @commandStack
    end
    

    def isCommand(command)
        java_monitor.synchronize do
        return @commandStack.contains(command)
        end
    end
    

    def addCommand(command)
        java_monitor.synchronize do
        if !@commandStack.contains(command)
            @commandStack.push(command)
            super(command)
        end
        end
    end
    

    def removeCommand(command)
        java_monitor.synchronize do
        @commandStack.removeElement(command)
        super(command)
        end
    end
    

    def removeAllCommands()
        java_monitor.synchronize do
        size = @commandStack.size()
        (0...size).each do |index|
            MyCanvas.superclass.instance_method(:removeCommand).bind(self).call(@commandStack.pop())
        end
        end
    end
    

    def setCommandListener(l)
        super(l)
        @commandListener = l
    end
    

    def getCustomCommandListener()
        return @commandListener
    end
    

    def isPaused()
        java_monitor.synchronize do
        return @paused
        end
    end
    

    def removePauseCommand()
        self.removeCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND)
    end
    

    def pause()
        java_monitor.synchronize do
        @logUtil.putF(@commonStrings.START, self, @canvasStrings.PAUSE)
        self.removePauseCommand()
        self.addCommand(MyCommandsFactory.getInstance().RESUME_COMMAND)
        self.setPaused(true)
        end
    end
    

    def unPause()
        java_monitor.synchronize do
        @logUtil.putF(@commonStrings.START, self, @canvasStrings.UN_PAUSE)
        self.removeCommand(MyCommandsFactory.getInstance().RESUME_COMMAND)
        self.addCommand(MyCommandsFactory.getInstance().PAUSE_COMMAND)
        self.setPaused(false)
        end
    end
    

    # throws Exception
    def process()
        @displayInfo.process()
    end
    

    def paint(graphics)
    end
    

    def draw(graphics)
    end
    

    def hasChild(displayable)
        return @childNameList.contains(displayable.name)
    end
    

    def destroy()
        @logUtil.putF("Destroyed MyCanvas", self, "destroy")
    end
    

    def setPaused(isPaused)
        @paused = isPaused
    end
    

    def keyPressedByDevice(keyCode, deviceId)
    end
    

    def keyRepeatedByDevice(keyCode, deviceId)
    end
    

    def keyReleasedByDevice(keyCode, deviceId)
    end
    

    def pointerDragged(x, y)
        @touchME.pointerDragged(x, y)
    end
    

    def pointerPressed(x, y)
        @touchME.pointerPressed(x, y)
    end
    

    def pointerReleased(x, y)
        @touchME.pointerReleased(x, y)
    end
    

    def nextSong(nextSongSound, leftVolume, rightVolume)
    end
end

autoload :Command, "javax/microedition/lcdui/Command"
autoload :CommandListener, "javax/microedition/lcdui/CommandListener"
autoload :Graphics, "javax/microedition/lcdui/Graphics"
autoload :NullCommandListener, "javax/microedition/lcdui/NullCommandListener"
autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory"
autoload :TouchJ2ME, "org/allbinary/input/TouchJ2ME"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :Sound, "org/allbinary/media/audio/Sound"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ABStack, "org/allbinary/util/ABStack"
autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings"
autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton"

