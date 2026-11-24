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

require "java/lang/Object"
require "java/lang/JavaOverload"
require "org/allbinary/logic/util/event/handler/BasicEventHandlerInterface"

module ::Org; module Allbinary; module Logic; module Util; module Event; module Handler

class BasicEventHandler
    include BasicEventHandlerInterface
    attr_accessor :logUtil, :eventListenerInterfaceList

    def jfields_org_allbinary_logic_util_event_handler_BasicEventHandler
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @eventListenerInterfaceList = nil unless instance_variable_defined?(:@eventListenerInterfaceList)
    end
    

    def initialize()
        jfields_org_allbinary_logic_util_event_handler_BasicEventHandler
        @eventListenerInterfaceList = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        _LISTENER = " Listener: "
        stringBuffer.append("Total Listeners: ")
        stringBuffer.appendint(@eventListenerInterfaceList.size())
        eventListenerInterface = nil
        index = 0
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.objectArray[index]
                stringBuffer.append(_LISTENER)
                stringBuffer.append(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().toString(eventListenerInterface))
            rescue StandardError => e
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.TOSTRING, e)
            end
            index += 1
        end
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
    

    def removeAllListeners()
        java_monitor.synchronize do
        @eventListenerInterfaceList = ::Org::Allbinary::Util::BasicArrayListD.new()
        end
    end
    java_overload :removeAllListeners, 0
    

    def addListenerSingleThreaded(eventListenerInterface)
        if !@eventListenerInterfaceList.contains(eventListenerInterface)
            @eventListenerInterfaceList.add(eventListenerInterface)
        end
    end
    java_overload :addListenerSingleThreaded, 1
    

    def addListenerInterface(eventListenerInterface)
        java_monitor.synchronize do
        if !@eventListenerInterfaceList.contains(eventListenerInterface)
            @eventListenerInterfaceList.add(eventListenerInterface)
        end
        end
    end
    java_overload :addListenerInterface, 1
    

    def removeListenerSingleThreaded(eventListenerInterface)
        @eventListenerInterfaceList.remove(eventListenerInterface)
    end
    java_overload :removeListenerSingleThreaded, 1
    

    def removeListener(eventListenerInterface)
        java_monitor.synchronize do
        @eventListenerInterfaceList.remove(eventListenerInterface)
        end
    end
    java_overload :removeListener, 1
    

    # throws Exception
    def fireEvent(eventObject)
        java_monitor.synchronize do
        index = 0
        eventListenerInterface = nil
        while index < @eventListenerInterfaceList.size()
            begin
                eventListenerInterface = @eventListenerInterfaceList.objectArray[index]
                self.process(eventObject, eventListenerInterface)
            rescue StandardError => e
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, ::Org::Allbinary::Logic::Util::Event::EventStrings.getInstance().FIRE_EVENT, e)
            end
            index += 1
        end
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:PERFORMANCE_MESSAGE, "Use Custom onEvent Methods for needed optimization")
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "BasicEventHandler"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:PERFORMANCE_MESSAGE].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :AllBinaryEventObject, "org/allbinary/logic/util/event/AllBinaryEventObject" unless const_defined?(:AllBinaryEventObject, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventListenerInterface, "org/allbinary/logic/util/event/EventListenerInterface" unless const_defined?(:EventListenerInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Util; module Event; autoload :EventStrings, "org/allbinary/logic/util/event/EventStrings" unless const_defined?(:EventStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end

begin
    BasicEventHandler.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

