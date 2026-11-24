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
# package org.allbinary.logic.communication.smtp.event.handler

require "java/lang/Object"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler

class UserEmailEventHandler
    attr_accessor :emailVector, :emailInfo, :userEmailEventNameData

    def jfields_org_allbinary_logic_communication_smtp_event_handler_UserEmailEventHandler
        @emailVector = nil unless instance_variable_defined?(:@emailVector)
        @emailInfo = nil unless instance_variable_defined?(:@emailInfo)
        @userEmailEventNameData = nil unless instance_variable_defined?(:@userEmailEventNameData)
    end
    

    def initialize()
        jfields_org_allbinary_logic_communication_smtp_event_handler_UserEmailEventHandler
        @emailVector = ::Org::Allbinary::Util::BasicArrayListD.new()
    end
    

    # throws Exception
    def receiveEmailInfo(userEmailEventNameData, emailInfo)
        java_monitor.synchronize do
        @userEmailEventNameData = userEmailEventNameData
        @emailInfo = emailInfo
        self.fireEmailEvent()
        end
    end
    

    def addListener_j1_1(vector)
        java_monitor.synchronize do
        size = vector.size()
        (0...size).each do |index|
            userEmailEventListenerInterface = vector.get(index)
            self.addListener(userEmailEventListenerInterface)
        end
        end
    end
    

    def addListener_j1_2(emailEventListenerInterface)
        java_monitor.synchronize do
        @emailVector.add(emailEventListenerInterface)
        end
    end

    def addListener(*java_overload_args)
        return addListener_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method addListener takes #{java_overload_args.length} arguments"
    end

    def addListener_j1(*java_overload_args)
        return addListener_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Util::BasicArrayList))
        return addListener_j1_2(*java_overload_args)
    end
    

    def removeListener(emailEventListenerInterface)
        java_monitor.synchronize do
        @emailVector.remove(emailEventListenerInterface)
        end
    end
    

    # throws Exception
    def fireEmailEvent()
        java_monitor.synchronize do
        emailEvent = ::Org::Allbinary::Logic::Communication::Smtp::Event::EmailEvent.new(self, @userEmailEventNameData, @emailInfo, 0)
        size = @emailVector.size()
        (0...size).each do |index|
            emailEventListenerInterface = @emailVector.get(index)
            emailEventListenerInterface.onEmailSendRequest(emailEvent)
        end
        end
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :EmailEvent, "org/allbinary/logic/communication/smtp/event/EmailEvent" unless const_defined?(:EmailEvent, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventListenerInterface, "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface" unless const_defined?(:UserEmailEventListenerInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData" unless const_defined?(:UserEmailEventNameData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo" unless const_defined?(:EmailInfo, false); end; end; end; end; end; end

end; end; end; end; end; end; end

