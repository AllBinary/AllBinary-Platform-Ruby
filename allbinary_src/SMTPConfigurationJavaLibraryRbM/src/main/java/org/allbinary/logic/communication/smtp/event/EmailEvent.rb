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

require "java/lang/JavaOverload"
require "java/util/EventObject"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event

class EmailEvent < ::Java::Util::EventObject
    attr_accessor :emailInfo, :userEmailEventNameData, :attempts

    def jfields_org_allbinary_logic_communication_smtp_event_EmailEvent
        @emailInfo = nil unless instance_variable_defined?(:@emailInfo)
        @userEmailEventNameData = nil unless instance_variable_defined?(:@userEmailEventNameData)
        @attempts = 0 unless instance_variable_defined?(:@attempts)
    end
    

    def initialize(emailEventHandler, userEmailEventNameData, emailInfo, attempts)
        super(emailEventHandler)
        jfields_org_allbinary_logic_communication_smtp_event_EmailEvent
        @userEmailEventNameData = userEmailEventNameData
        @emailInfo = emailInfo
    end
    

    def getEmailInfo()
        return @emailInfo
    end
    java_overload :getEmailInfo, 0
    

    def getAttempts()
        return @attempts
    end
    java_overload :getAttempts, 0
    

    def setAttempts(attempts)
        @attempts = attempts
    end
    java_overload :setAttempts, 1
    

    def toString()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("EmailEvent Log: \n")
        stringBuffer.append("Event Name: ")
        stringBuffer.append(@userEmailEventNameData.to_s)
        stringBuffer.append(self.getEmailInfo().to_s)
        stringBuffer.append("\nNumber of Attempts: ")
        stringBuffer.appendint(self.getAttempts())
        return stringBuffer.to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo" unless const_defined?(:EmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData" unless const_defined?(:UserEmailEventNameData, false)

end; end; end; end; end; end

