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


class NewPasswordEmail
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :userInterface, :newPassword

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @abeClientInformation = nil
        @userInterface = nil
        @newPassword = nil
    end
    

    def initialize(abeClientInformation, userInterface, newPassword)
        initialize_fields
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("notifyStoreAdmin", self, "notifyStoreAdmin")
            end
            emailSubject = "New Password For User: " + (@userInterface.getUserName()).to_s
            emailBody = "New Password: " + @newPassword
            basicEmailInfo = AdminEmailInfo.new(emailSubject, emailBody)
            emailInfo = EmailInfo.new(basicEmailInfo)
            adminUserEmailEventHandler = AdminUserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, UserEmailEventNameData::NEWPASSWORD)
            adminUserEmailEventHandler.receiveEmailInfo(UserEmailEventNameData::NEWPASSWORD, emailInfo)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "emailAdmin", e)
            end
        end
    end
    

    # throws Exception
    def notifyUser()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Email User", self, "notifyUser()")
            end
            subject = "New Password"
            body = "New Password: " + @newPassword
            basicEmailInfo = AdminEmailInfo.new(subject, body)
            emailInfo = EmailInfo.new(basicEmailInfo)
            userEmailEventHandler = UserEmailEventHandlerSingletons.getInstance().getInstance(@abeClientInformation, UserEmailEventNameData::NEWPASSWORD, @userInterface)
            userEmailEventHandler.receiveEmailInfo(UserEmailEventNameData::NEWPASSWORD, emailInfo)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGINGERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "notifyUser", e)
            end
            raise e
        end
    end
end

autoload :UserInterface, "org/allbinary/business/user/UserInterface"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"
autoload :AdminUserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/AdminUserEmailEventHandlerSingletons"
autoload :UserEmailEventHandlerSingletons, "org/allbinary/logic/communication/smtp/event/handler/factory/UserEmailEventHandlerSingletons"
autoload :AdminEmailInfo, "org/allbinary/logic/communication/smtp/info/AdminEmailInfo"
autoload :BasicEmailInfo, "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"
autoload :EmailInfo, "org/allbinary/logic/communication/smtp/info/EmailInfo"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

