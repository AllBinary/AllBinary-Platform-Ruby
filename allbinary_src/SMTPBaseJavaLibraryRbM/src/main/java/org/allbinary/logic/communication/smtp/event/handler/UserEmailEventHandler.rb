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

class UserEmailEventHandler
    attr_accessor :emailVector, :emailInfo, :userEmailEventNameData

    def initialize_fields
        @emailVector = nil
        @emailInfo = nil
        @userEmailEventNameData = nil
    end
    

    def initialize()
        initialize_fields
        @emailVector = BasicArrayListD.new()
    end
    

    # throws Exception
    def receiveEmailInfo(userEmailEventNameData, emailInfo)
        java_monitor.synchronize do
        @userEmailEventNameData = userEmailEventNameData
        @emailInfo = emailInfo
        self.fireEmailEvent()
        end
    end
    

    def addListener(vector)
        java_monitor.synchronize do
        size = vector.size()
        (0...size).each do |index|
            userEmailEventListenerInterface = vector.get(index)
            self.addListener(userEmailEventListenerInterface)
        end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def addListener(emailEventListenerInterface)
        java_monitor.synchronize do
        @emailVector.add(emailEventListenerInterface)
        end
    end
    

    def removeListener(emailEventListenerInterface)
        java_monitor.synchronize do
        @emailVector.remove(emailEventListenerInterface)
        end
    end
    

    # throws Exception
    def fireEmailEvent()
        java_monitor.synchronize do
        emailEvent = EmailEvent.new(self, @userEmailEventNameData, @emailInfo, 0)
        size = @emailVector.size()
        (0...size).each do |index|
            emailEventListenerInterface = @emailVector.get(index)
            emailEventListenerInterface.onEmailSendRequest(emailEvent)
        end
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/smtp/event/EmailEvent"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
require "org/allbinary/logic/communication/smtp/info/EmailInfo"

