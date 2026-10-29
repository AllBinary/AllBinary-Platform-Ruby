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

# require "javax/microedition/lcdui/Command"
# require "javax/microedition/lcdui/CommandListener"
# require "javax/microedition/lcdui/Display"
# require "javax/microedition/lcdui/Displayable"
# require "javax/microedition/lcdui/NullCanvas"
# require "javax/microedition/midlet/MIDlet"
# require "javax/microedition/midlet/MIDletStateChangeException"

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
            AllBinaryMidlet::NULL_ALLBINARY_MIDLET = AllBinaryMidlet.new()
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
            if title != nil
                @logUtil.putF(StringMaker.new().append(@SETTING_).append(title).append(@_DISPLAY_).append(StringUtil.getInstance().toString(newDisplay)).to_s, self, @SET_DISPLAY)
            else
                @logUtil.putF(StringMaker.new().append(@SETTING_NO_TITLE).append(StringUtil.getInstance().toString(newDisplay)).to_s, self, @SET_DISPLAY)
            end
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
end

require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/ForcedLogUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/util/event/EventStrings"
require "org/allbinary/string/CommonLabels"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/system/Memory"
require "org/allbinary/logic/NullUtil"
require "org/allbinary/util/ABHashtable"

class AllBinaryMidlet
    NULL_ALLBINARY_MIDLET = NullUtil.getInstance().NULL_OBJECT
end

