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

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Configuration; module Server

class EmailServerConfiguration
    include EmailServerConfigurationInterface
    attr_accessor :logUtil, :accountName, :password, :smtpServer

    def jfields_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfiguration
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @accountName = nil unless instance_variable_defined?(:@accountName)
        @password = nil unless instance_variable_defined?(:@password)
        @smtpServer = nil unless instance_variable_defined?(:@smtpServer)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfiguration_0(*args)
        when 1 then jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfiguration_1(*args)
        when 3 then jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfiguration_3(*args)
        else raise ArgumentError, "No constructor of EmailServerConfiguration takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfiguration_0()
        jfields_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfiguration
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        end
        self.setSmtpServer(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfiguration_1(hashMap)
        jfields_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfiguration
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, "EmailServerConfiguration(HashMap)")
        end
        self.setAccountName(hashMap.get(EmailServerConfigurationData::ACCOUNT))
        self.setPassword(hashMap.get(EmailServerConfigurationData::PASSWORD))
        self.setSmtpServer(hashMap.get(EmailServerConfigurationData::SERVER))
        self.log()
    end
    

    def jnew_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfiguration_3(account, password, server)
        jfields_org_allbinary_logic_communication_smtp_configuration_server_EmailServerConfiguration
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
    java_overload :setSmtpServer, 1
    

    def getSmtpServer()
        return @smtpServer
    end
    java_overload :getSmtpServer, 0
    

    def getAccountName()
        return @accountName
    end
    java_overload :getAccountName, 0
    

    def setAccountName(accountName)
        @accountName = accountName
    end
    java_overload :setAccountName, 1
    

    def getPassword()
        return @password
    end
    java_overload :getPassword, 0
    

    def setPassword(password)
        @password = password
    end
    java_overload :setPassword, 1
    

    def log()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(self.to_s, self, "EmailServerConfiguration")
        end
    end
    java_overload :log, 0
    

    def toString()
        return "Email Server Configuration:\n" + "Smtp Server: \n" + (self.getSmtpServer()).to_s + "\nAccount Name: " + (self.getAccountName()).to_s + "\nPassword: " + (self.getPassword()).to_s
    end
    java_overload :toString, 0
    alias_method :to_s, :toString
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :EmailServerConfigurationData, "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationData" unless const_defined?(:EmailServerConfigurationData, false)

end; end; end; end; end; end; end

