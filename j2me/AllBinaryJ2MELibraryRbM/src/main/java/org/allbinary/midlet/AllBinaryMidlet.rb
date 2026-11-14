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
# package org.allbinary.midlet

require "javax/microedition/lcdui/CommandListener"
require "javax/microedition/midlet/MIDlet"

class AllBinaryMidlet < MIDlet
    include CommandListener
    attr_accessor :logUtil, :commonStrings, :SET_DISPLAY, :SETTING_, :_DISPLAY_, :SETTING_NO_TITLE, :hashtable, :midletDestroyed

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @SET_DISPLAY = "setDisplay"
        @SETTING_ = "Setting: "
        @_DISPLAY_ = " Display: "
        @SETTING_NO_TITLE = "Setting: No Title, Display: "
        @hashtable = StdUtil.getInstance().createHashtable()
        @midletDestroyed = false
    end
    

    def self.getNullInstance()
        if AllBinaryMidlet::NULL_ALLBINARY_MIDLET == NullUtil.getInstance().NULL_OBJECT
            (AllBinaryMidlet.send(:remove_const, :NULL_ALLBINARY_MIDLET) if AllBinaryMidlet.const_defined?(:NULL_ALLBINARY_MIDLET, false); AllBinaryMidlet.const_set(:NULL_ALLBINARY_MIDLET, AllBinaryMidlet.new()))
        end
        return AllBinaryMidlet::NULL_ALLBINARY_MIDLET
    end
    

    def initialize()
        super()
        initialize_fields
        @logUtil.putF(@commonStrings.CONSTRUCTOR, self, "AllBinaryMidlet::AllBinaryMidlet")
    end
    

    def setDisplay(newDisplay)
        title = StringUtil.getInstance().EMPTY_STRING
        if newDisplay != NullCanvas::NULL_CANVAS
            title = newDisplay.getTitle()
            @logUtil.putF(StringMaker.new().append(@SETTING_).append(title).append(@_DISPLAY_).append(StringUtil.getInstance().toString(newDisplay)).to_s, self, @SET_DISPLAY)
        end
        display = self.getDisplay()
        display.setCurrent(newDisplay)
    end
    

    def getDisplay()
        return Display.getDisplay(self)
    end
    

    def getCurrentDisplayable()
        return Display.getDisplay(self).getCurrent()
    end
    

    def setDestroyed(destroyed)
        @midletDestroyed = destroyed
    end
    

    def isDestroyed()
        return @midletDestroyed
    end
    

    # throws MIDletStateChangeException
    def startApp()
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def pauseApp()
        ForcedLogUtil.log(EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    

    def destroyAppInRunnable(unconditional, isProgress)
    end
    

    def destroyApp(unconditional)
        _METHOD_NAME = "AllBinaryMidlet::destroyApp"
        begin
            @logUtil.putF(@commonStrings.START, self, _METHOD_NAME)
            PreLogUtil.put(Memory.getInfo(), self, _METHOD_NAME)
            self.setDestroyed(true)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, _METHOD_NAME, e)
        end
    end
    

    # throws Exception
    def setStartStateHashtable(hashtable)
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(hashtable)).to_s, self, "setStartStateHashtable")
        @hashtable = hashtable
    end
    

    # throws Exception
    def getStartStateHashtable()
        @logUtil.putF(StringMaker.new().append(CommonLabels.getInstance().START_LABEL).append(StringUtil.getInstance().toString(@hashtable)).to_s, self, "getStartStateHashtable")
        return @hashtable
    end
    

    # throws Exception
    def getCurrentStateHashtable()
        @logUtil.putF(@commonStrings.START, self, "getStateHashtable")
        return StdUtil.getInstance().NULL_TABLE
    end
    

    def commandAction(command, displayable)
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ALLBINARY_MIDLET, NullUtil.getInstance().NULL_OBJECT)
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AllBinaryMidlet"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:NULL_ALLBINARY_MIDLET].include?(name)
        end
        super
    end
end

autoload :Command, "javax/microedition/lcdui/Command"
autoload :Display, "javax/microedition/lcdui/Display"
autoload :Displayable, "javax/microedition/lcdui/Displayable"
autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas"
autoload :MIDletStateChangeException, "javax/microedition/midlet/MIDletStateChangeException"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :StringUtil, "org/allbinary/logic/string/StringUtil"
autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings"
autoload :CommonLabels, "org/allbinary/string/CommonLabels"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :Memory, "org/allbinary/system/Memory"
autoload :NullUtil, "org/allbinary/logic/NullUtil"
autoload :ABHashtable, "org/allbinary/util/ABHashtable"

begin
    AllBinaryMidlet.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

