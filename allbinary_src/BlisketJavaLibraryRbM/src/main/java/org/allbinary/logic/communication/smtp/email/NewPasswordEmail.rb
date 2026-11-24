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
# package org.allbinary.logic.communication.smtp.email


module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module EmailPackage

class NewPasswordEmail
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :userInterface, :newPassword

    def jfields_org_allbinary_logic_communication_smtp_email_NewPasswordEmail
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @abeClientInformation = nil unless instance_variable_defined?(:@abeClientInformation)
        @userInterface = nil unless instance_variable_defined?(:@userInterface)
        @newPassword = nil unless instance_variable_defined?(:@newPassword)
    end
    

    def initialize(abeClientInformation, userInterface, newPassword)
        jfields_org_allbinary_logic_communication_smtp_email_NewPasswordEmail
        @abeClientInformation = abeClientInformation
        @userInterface = userInterface
        @newPassword = newPassword
    end
    

    # throws Exception
    def process()
        self.notifyStoreAdmin()
        self.notifyUser()
    end
    

    # throws Exception
    def notifyStoreAdmin()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("notifyStoreAdmin", self, "notifyStoreAdmin")
            end
            emailSubject = "New Password For User: " + (@userInterface.getUserName()).to_s
            emailBody = "New Password: " + @newPassword
            basicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::AdminEmailInfo.new(emailSubject, emailBody)
            emailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(basicEmailInfo)
            adminUserEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::NEWPASSWORD)
            adminUserEmailEventHandler.receiveEmailInfo(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::NEWPASSWORD, emailInfo)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "emailAdmin", e)
            end
        end
    end
    

    # throws Exception
    def notifyUser()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Email User", self, "notifyUser()")
            end
            subject = "New Password"
            body = "New Password: " + @newPassword
            basicEmailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::AdminEmailInfo.new(subject, body)
            emailInfo = ::Org::Allbinary::Logic::Communication::Smtp::Info::EmailInfo.new(basicEmailInfo)
            userEmailEventHandler = ::Org::Allbinary::Logic::Communication::Smtp::Event::Handler::Factory::UserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, ::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::NEWPASSWORD, @userInterface)
            userEmailEventHandler.receiveEmailInfo(::Org::Allbinary::Logic::Communication::Smtp::Event::UserEmailEventNameData::NEWPASSWORD, emailInfo)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "notifyUser", e)
            end
            raise e
        end
    end
end

module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData" unless const_defined?(:UserEmailEventNameData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler" unless const_defined?(:UserEmailEventHandler, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :AdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons" unless const_defined?(:AdminUserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Event; module Handler; module Factory; autoload :UserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/UserEmailEventHandlerSingletons" unless const_defined?(:UserEmailEventHandlerSingletons, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :AdminEmailInfo, "org/allbinary/logic/communication/smtp/info/AdminEmailInfo" unless const_defined?(:AdminEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo" unless const_defined?(:BasicEmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Smtp; module Info; autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo" unless const_defined?(:EmailInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

