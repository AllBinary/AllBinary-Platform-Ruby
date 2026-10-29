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
# package org.allbinary.logic.communication.smtp.info


class BasicEmailInfo
    attr_accessor :logUtil, :subject, :textBody, :emailServerConfigurationInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @subject = nil
        @textBody = nil
        @emailServerConfigurationInterface = nil
    end
    

    def initialize(subject, textBody)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        end
        @subject = subject
        @textBody = textBody
    end
    

    def getSubject()
        return @subject
    end
    

    def getTextBody()
        return @textBody
    end
    

    def getEmailServerConfigurationInterface()
        return @emailServerConfigurationInterface
    end
    

    def setEmailServerConfigurationInterface(emailServerConfigurationInterface)
        @emailServerConfigurationInterface = emailServerConfigurationInterface
    end
    

    def toString()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.getEmailServerConfigurationInterface().to_s)
        stringBuffer.append(CommonSeps.getInstance().NEW_LINE)
        stringBuffer.append("Subject: \n")
        stringBuffer.append(self.getSubject())
        stringBuffer.append("\nText Body: \n")
        stringBuffer.append(self.getTextBody())
        return stringBuffer.to_s
    end
    alias_method :to_s, :toString
    

    # throws Exception
    def init()
        raise RuntimeError.new()
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"

