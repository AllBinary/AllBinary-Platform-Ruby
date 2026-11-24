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
# package org.allbinary.logic.util.event.handler

require "java/lang/JavaOverload"
# require "jsinterop/annotations/JsType"
# require "jsinterop/annotations/JsMethod"
# require "jsinterop/annotations/JsConstructor"
# require "jsinterop/annotations/JsProperty"
require "org/allbinary/logic/util/event/handler/BasicEventHandlerInterface"

module ::Org; module Allbinary; module Logic; module Util; module Event; module Handler

class BasicEventHandler
    include BasicEventHandlerInterface
    attr_accessor :logUtil, :commonStrings, :eventStrings, :eventListenerInterfaceList

    def jfields_org_allbinary_logic_util_event_handler_BasicEventHandler
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @eventStrings = ::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance()
        @eventListenerInterfaceList = nil unless instance_variable_defined?(:@eventListenerInterfaceList)
    end
    

    def initialize()
        jfields_org_allbinary_logic_util_event_handler_BasicEventHandler
        @eventListenerInterfaceList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def removeAllListeners()
        @eventListenerInterfaceList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    java_overload :removeAllListeners, 0
    

    def addListeners(vector)
        eventListenerInterface = nil
        size = vector.size()
        (0...size).each do |index|
            eventListenerInterface = vector.get(index)
            self.addListenerInterface(eventListenerInterface)
        end
    end
    java_overload :addListeners, 1
    

    def removeListeners(vector)
        eventListenerInterface = nil
        size = vector.size()
        (0...size).each do |index|
            eventListenerInterface = vector.get(index)
            self.removeListener(eventListenerInterface)
        end
    end
    java_overload :removeListeners, 1
    

    def addListenerSingleThreaded(eventListenerInterface)
        if !@eventListenerInterfaceList.contains(eventListenerInterface)
            @eventListenerInterfaceList.add(eventListenerInterface)
        end
    end
    java_overload :addListenerSingleThreaded, 1
    

    def addListenerInterface(eventListenerInterface)
        if !@eventListenerInterfaceList.contains(eventListenerInterface)
            @eventListenerInterfaceList.add(eventListenerInterface)
        end
    end
    java_overload :addListenerInterface, 1
    

    def removeListenerSingleThreaded(eventListenerInterface)
        @eventListenerInterfaceList.remove(eventListenerInterface)
    end
    java_overload :removeListenerSingleThreaded, 1
    

    def removeListener(eventListenerInterface)
        @eventListenerInterfaceList.remove(eventListenerInterface)
    end
    java_overload :removeListener, 1
    

    # throws Exception
    def fireEvent(eventObject)
        eventListenerInterface = nil
        index = 0
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.get(index)
                self.process(eventObject, eventListenerInterface)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @eventStrings.FIRE_EVENT, e)
            end
            index += 1
        end
    end
    java_overload :fireEvent, 1
    

    # throws Exception
    def process(eventObject, eventListenerInterface)
        eventListenerInterface.onEvent(eventObject)
    end
    java_overload :process, 2
    

    def getEventListenerInterfaceListP()
        return @eventListenerInterfaceList
    end
    java_overload :getEventListenerInterfaceListP, 0
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@eventStrings.TOTAL_LISTENERS)
        stringBuffer.appendint(@eventListenerInterfaceList.size())
        eventListenerInterface = nil
        index = 0
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.get(index)
                stringBuffer.append(@eventStrings.LISTENER_LABEL)
                stringBuffer.append(eventListenerInterface.to_s)
            rescue StandardError => e
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.TOSTRING, e)
            end
            index += 1
        end
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

end; end; end; end; end; end

