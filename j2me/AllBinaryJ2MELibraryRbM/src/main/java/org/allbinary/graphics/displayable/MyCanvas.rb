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
require "java/lang/JavaOverload"
require "javax/microedition/lcdui/Canvas"
require "org/allbinary/graphics/displayable/command/MyCommandInterface"
require "org/allbinary/graphics/displayable/DisplayableInterface"

module ::Org; module Allbinary; module Graphics; module Displayable

class MyCanvas < ::Javax::Microedition::Lcdui::Canvas
    include DisplayableInterface
    include ::Org::Allbinary::Graphics::Displayable::Command::MyCommandInterface
    attr_accessor :logUtil, :commonStrings, :canvasStrings, :stringUtil, :displayInfo, :name, :childNameList, :commandStack, :commandListener, :paused, :touchME

    def jfields_org_allbinary_graphics_displayable_MyCanvas
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @canvasStrings = CanvasStrings.getInstance()
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @displayInfo = DisplayInfoSingleton.getInstance()
        @name = nil unless instance_variable_defined?(:@name)
        @childNameList = nil unless instance_variable_defined?(:@childNameList)
        @commandStack = nil unless instance_variable_defined?(:@commandStack)
        @commandListener = ::Javax::Microedition::Lcdui::NullCommandListener::NULL_COMMAND_LISTENER
        @paused = false unless instance_variable_defined?(:@paused)
        @touchME = ::Org::Allbinary::Input::TouchJ2ME.new()
    end
    

    def initialize(name, childNameList)
        super()
        jfields_org_allbinary_graphics_displayable_MyCanvas
        @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        @displayInfo.update(self, @canvasStrings.CONSTRUCTOR)
        @name = name
        @childNameList = childNameList
        @commandStack = ::Org::Allbinary::Logic::StdUtil.getInstance().createStack()
    end
    

    def getWidth()
        return MyCanvas.superclass.java_super_method(:getWidth, 0).bind(self).call()
    end
    java_overload :getWidth, 0
    

    def getHeight()
        return MyCanvas.superclass.java_super_method(:getHeight, 0).bind(self).call()
    end
    java_overload :getHeight, 0
    

    def setFullScreenMode(mode)
        MyCanvas.superclass.java_super_method(:setFullScreenMode, 1).bind(self).call(mode)
        @displayInfo.update(self, @canvasStrings.SET_FULL_SCREEN_MODE)
    end
    java_overload :setFullScreenMode, 1
    

    def sizeChanged(w, h)
        @displayInfo.update(self, @canvasStrings.SIZE_CHANGED)
    end
    java_overload :sizeChanged, 2
    

    def getCommandStack()
        return @commandStack
    end
    java_overload :getCommandStack, 0
    

    def isCommand(command)
        java_monitor.synchronize do
        return @commandStack.contains(command)
        end
    end
    java_overload :isCommand, 1
    

    def addCommand(command)
        java_monitor.synchronize do
        if !@commandStack.contains(command)
            @commandStack.push(command)
            MyCanvas.superclass.java_super_method(:addCommand, 1).bind(self).call(command)
        end
        end
    end
    java_overload :addCommand, 1
    

    def removeCommand(command)
        java_monitor.synchronize do
        @commandStack.removeElement(command)
        MyCanvas.superclass.java_super_method(:removeCommand, 1).bind(self).call(command)
        end
    end
    java_overload :removeCommand, 1
    

    def removeAllCommands()
        java_monitor.synchronize do
        size = @commandStack.size()
        (0...size).each do |index|
            MyCanvas.superclass.java_super_method(:removeCommand, 1).bind(self).call(@commandStack.pop())
        end
        end
    end
    java_overload :removeAllCommands, 0
    

    def setCommandListener(l)
        MyCanvas.superclass.java_super_method(:setCommandListener, 1).bind(self).call(l)
        @commandListener = l
    end
    java_overload :setCommandListener, 1
    

    def getCustomCommandListener()
        return @commandListener
    end
    java_overload :getCustomCommandListener, 0
    

    def isPaused()
        java_monitor.synchronize do
        return @paused
        end
    end
    java_overload :isPaused, 0
    

    def removePauseCommand()
        self.removeCommand(::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance().PAUSE_COMMAND)
    end
    java_overload :removePauseCommand, 0
    

    def pause()
        java_monitor.synchronize do
        @logUtil.putF(@commonStrings.START, self, @canvasStrings.PAUSE)
        self.removePauseCommand()
        self.addCommand(::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance().RESUME_COMMAND)
        self.setPaused(true)
        end
    end
    java_overload :pause, 0
    

    def unPause()
        java_monitor.synchronize do
        @logUtil.putF(@commonStrings.START, self, @canvasStrings.UN_PAUSE)
        self.removeCommand(::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance().RESUME_COMMAND)
        self.addCommand(::Org::Allbinary::Graphics::Displayable::Command::MyCommandsFactory.getInstance().PAUSE_COMMAND)
        self.setPaused(false)
        end
    end
    java_overload :unPause, 0
    

    # throws Exception
    def process()
        @displayInfo.process()
    end
    java_overload :process, 0
    

    def paint(graphics)
    end
    java_overload :paint, 1
    

    def draw(graphics)
    end
    java_overload :draw, 1
    

    def hasChild(displayable)
        return @childNameList.contains(displayable.name)
    end
    java_overload :hasChild, 1
    

    def destroy()
        @logUtil.putF("Destroyed MyCanvas", self, "destroy")
    end
    java_overload :destroy, 0
    

    def setPaused(isPaused)
        @paused = isPaused
    end
    java_overload :setPaused, 1
    

    def keyPressedByDevice(keyCode, deviceId)
    end
    java_overload :keyPressedByDevice, 2
    

    def keyRepeatedByDevice(keyCode, deviceId)
    end
    java_overload :keyRepeatedByDevice, 2
    

    def keyReleasedByDevice(keyCode, deviceId)
    end
    java_overload :keyReleasedByDevice, 2
    

    def pointerDragged(x, y)
        @touchME.pointerDragged(x, y)
    end
    java_overload :pointerDragged, 2
    

    def pointerPressed(x, y)
        @touchME.pointerPressed(x, y)
    end
    java_overload :pointerPressed, 2
    

    def pointerReleased(x, y)
        @touchME.pointerReleased(x, y)
    end
    java_overload :pointerReleased, 2
    

    def nextSong(nextSongSound, leftVolume, rightVolume)
    end
    java_overload :nextSong, 3
end

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :CommandListener, "javax/microedition/lcdui/CommandListener" unless const_defined?(:CommandListener, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Graphics, "javax/microedition/lcdui/Graphics" unless const_defined?(:Graphics, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCommandListener, "javax/microedition/lcdui/NullCommandListener" unless const_defined?(:NullCommandListener, false); end; end; end
module ::Org; module Allbinary; module Graphics; module Displayable; module Command; autoload :MyCommandsFactory, "org/allbinary/graphics/displayable/command/MyCommandsFactory" unless const_defined?(:MyCommandsFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Input; autoload :TouchJ2ME, "org/allbinary/input/TouchJ2ME" unless const_defined?(:TouchJ2ME, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Media; module Audio; autoload :Sound, "org/allbinary/media/audio/Sound" unless const_defined?(:Sound, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABStack, "org/allbinary/util/ABStack" unless const_defined?(:ABStack, false); end; end; end
autoload :CanvasStrings, "org/allbinary/graphics/displayable/CanvasStrings" unless const_defined?(:CanvasStrings, false)
autoload :DisplayInfoSingleton, "org/allbinary/graphics/displayable/DisplayInfoSingleton" unless const_defined?(:DisplayInfoSingleton, false)

end; end; end; end

