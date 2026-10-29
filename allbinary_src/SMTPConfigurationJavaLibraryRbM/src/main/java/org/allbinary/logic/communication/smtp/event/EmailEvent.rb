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
# package org.allbinary.logic.communication.smtp.event

# require "java/util/EventObject"

class EmailEvent < EventObject
    attr_accessor :emailInfo, :userEmailEventNameData, :attempts

    def initialize_fields
        @emailInfo = nil
        @userEmailEventNameData = nil
        @attempts = 0
    end
    

    def initialize(emailEventHandler, userEmailEventNameData, emailInfo, attempts)
        super(emailEventHandler)
        initialize_fields
        @userEmailEventNameData = userEmailEventNameData
        @emailInfo = emailInfo
    end
    

    def getEmailInfo()
        return @emailInfo
    end
    

    def getAttempts()
        return @attempts
    end
    

    def setAttempts(attempts)
        @attempts = attempts
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append("EmailEvent Log: \n")
        stringBuffer.append("Event Name: ")
        stringBuffer.append(@userEmailEventNameData.to_s)
        stringBuffer.append(self.getEmailInfo().to_s)
        stringBuffer.append("\nNumber of Attempts: ")
        stringBuffer.appendint(self.getAttempts())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
end

require "org/allbinary/logic/communication/smtp/info/EmailInfo"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"

