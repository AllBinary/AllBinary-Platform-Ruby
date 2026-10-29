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
# package org.allbinary.logic.communication.smtp.configuration.server

require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface"

class EmailServerConfiguration
    include EmailServerConfigurationInterface
    attr_accessor :logUtil, :accountName, :password, :smtpServer

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @accountName = nil
        @password = nil
        @smtpServer = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 3 then constructor3(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        end
        self.setSmtpServer(StringUtil.getInstance().EMPTY_STRING)
    end
    

    def constructor1(hashMap)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, "EmailServerConfiguration(HashMap)")
        end
        self.setAccountName(hashMap.get(EmailServerConfigurationData::ACCOUNT))
        self.setPassword(hashMap.get(EmailServerConfigurationData::PASSWORD))
        self.setSmtpServer(hashMap.get(EmailServerConfigurationData::SERVER))
        self.log()
    end
    

    def constructor3(account, password, server)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, "EmailServerConfiguration(HashMap)")
        end
        self.setAccountName(account)
        self.setPassword(password)
        self.setSmtpServer(server)
        self.log()
    end
    

    def setSmtpServer(value)
        @smtpServer = value
    end
    

    def getSmtpServer()
        return @smtpServer
    end
    

    def getAccountName()
        return @accountName
    end
    

    def setAccountName(accountName)
        @accountName = accountName
    end
    

    def getPassword()
        return @password
    end
    

    def setPassword(password)
        @password = password
    end
    

    def log()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(self.to_s, self, "EmailServerConfiguration")
        end
    end
    

    def toString()
        return "Email Server Configuration:\n" + "Smtp Server: \n" + (self.getSmtpServer()).to_s + "\nAccount Name: " + (self.getAccountName()).to_s + "\nPassword: " + (self.getPassword()).to_s
    end
    alias_method :to_s, :toString
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationData"

