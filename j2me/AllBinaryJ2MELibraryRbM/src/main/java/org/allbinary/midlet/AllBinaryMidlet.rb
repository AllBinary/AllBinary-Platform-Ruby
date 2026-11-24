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

require "java/lang/JavaOverload"
require "javax/microedition/lcdui/CommandListener"
require "javax/microedition/midlet/MIDlet"

module ::Org; module Allbinary; module Midlet

class AllBinaryMidlet < ::Javax::Microedition::Midlet::MIDlet
    include ::Javax::Microedition::Lcdui::CommandListener
    attr_accessor :logUtil, :commonStrings, :SET_DISPLAY, :SETTING_, :_DISPLAY_, :SETTING_NO_TITLE, :hashtable, :midletDestroyed

    def jfields_org_allbinary_midlet_AllBinaryMidlet
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @SET_DISPLAY = "setDisplay"
        @SETTING_ = "Setting: "
        @_DISPLAY_ = " Display: "
        @SETTING_NO_TITLE = "Setting: No Title, Display: "
        @hashtable = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashtable()
        @midletDestroyed = false unless instance_variable_defined?(:@midletDestroyed)
    end
    

    def self.getNullInstance()
        if AllBinaryMidlet::NULL_ALLBINARY_MIDLET == ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT
            (AllBinaryMidlet.instance_exec(AllBinaryMidlet.new()) { |java_value| remove_const(:NULL_ALLBINARY_MIDLET) if const_defined?(:NULL_ALLBINARY_MIDLET, false); const_set(:NULL_ALLBINARY_MIDLET, java_value) })
        end
        return AllBinaryMidlet::NULL_ALLBINARY_MIDLET
    end
    

    def initialize()
        super()
        jfields_org_allbinary_midlet_AllBinaryMidlet
        @logUtil.putF(@commonStrings.CONSTRUCTOR, self, "AllBinaryMidlet::AllBinaryMidlet")
    end
    

    def setDisplay(newDisplay)
        title = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
        if newDisplay != ::Javax::Microedition::Lcdui::NullCanvas::NULL_CANVAS
            title = newDisplay.getTitle()
            @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@SETTING_).append(title).append(@_DISPLAY_).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(newDisplay)).to_s, self, @SET_DISPLAY)
        end
        display = self.getDisplay()
        display.setCurrent(newDisplay)
    end
    java_overload :setDisplay, 1
    

    def getDisplay()
        return ::Javax::Microedition::Lcdui::Display.getDisplay(self)
    end
    java_overload :getDisplay, 0
    

    def getCurrentDisplayable()
        return ::Javax::Microedition::Lcdui::Display.getDisplay(self).getCurrent()
    end
    java_overload :getCurrentDisplayable, 0
    

    def setDestroyed(destroyed)
        @midletDestroyed = destroyed
    end
    java_overload :setDestroyed, 1
    

    def isDestroyed()
        return @midletDestroyed
    end
    java_overload :isDestroyed, 0
    

    # throws MIDletStateChangeException
    def startApp()
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :startApp, 0
    

    def pauseApp()
        ::Org::Allbinary::Logic::Communication::Log::ForcedLogUtil.log(::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().PERFORMANCE_MESSAGE, self)
    end
    java_overload :pauseApp, 0
    

    def destroyAppInRunnable(unconditional, isProgress)
    end
    java_overload :destroyAppInRunnable, 2
    

    def destroyApp(unconditional)
        _METHOD_NAME = "AllBinaryMidlet::destroyApp"
        begin
            @logUtil.putF(@commonStrings.START, self, _METHOD_NAME)
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::System::Memory.getInfo(), self, _METHOD_NAME)
            self.setDestroyed(true)
        rescue StandardError => e
            @logUtil.put(@commonStrings.EXCEPTION, self, _METHOD_NAME, e)
        end
    end
    java_overload :destroyApp, 1
    

    # throws Exception
    def setStartStateHashtable(hashtable)
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(hashtable)).to_s, self, "setStartStateHashtable")
        @hashtable = hashtable
    end
    java_overload :setStartStateHashtable, 1
    

    # throws Exception
    def getStartStateHashtable()
        @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(::Org::Allbinary::StringPackage::CommonLabels.getInstance().START_LABEL).append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(@hashtable)).to_s, self, "getStartStateHashtable")
        return @hashtable
    end
    java_overload :getStartStateHashtable, 0
    

    # throws Exception
    def getCurrentStateHashtable()
        @logUtil.putF(@commonStrings.START, self, "getStateHashtable")
        return ::Org::Allbinary::Logic::StdUtil.getInstance().NULL_TABLE
    end
    java_overload :getCurrentStateHashtable, 0
    

    def commandAction(command, displayable)
    end
    java_overload :commandAction, 2

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            const_set(:NULL_ALLBINARY_MIDLET, ::Org::Allbinary::Logic::NullUtil.getInstance().NULL_OBJECT)
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

module ::Javax; module Microedition; module Lcdui; autoload :Command, "javax/microedition/lcdui/Command" unless const_defined?(:Command, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Display, "javax/microedition/lcdui/Display" unless const_defined?(:Display, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :Displayable, "javax/microedition/lcdui/Displayable" unless const_defined?(:Displayable, false); end; end; end
module ::Javax; module Microedition; module Lcdui; autoload :NullCanvas, "javax/microedition/lcdui/NullCanvas" unless const_defined?(:NullCanvas, false); end; end; end
module ::Javax; module Microedition; module Midlet; autoload :MIDletStateChangeException, "javax/microedition/midlet/MIDletStateChangeException" unless const_defined?(:MIDletStateChangeException, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :ForcedLogUtil, "org/allbinary/logic/communication/log/ForcedLogUtil" unless const_defined?(:ForcedLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonLabels, "org/allbinary/string/CommonLabels" unless const_defined?(:CommonLabels, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module System; autoload :Memory, "org/allbinary/system/Memory" unless const_defined?(:Memory, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :NullUtil, "org/allbinary/logic/NullUtil" unless const_defined?(:NullUtil, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :ABHashtable, "org/allbinary/util/ABHashtable" unless const_defined?(:ABHashtable, false); end; end; end

begin
    AllBinaryMidlet.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end

