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
# package org.allbinary.logic.communication.smtp.event.modules.event.user

require "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface"

class UserEmailEventListenerModule
    include UserEmailEventListenerInterface
    attr_accessor :logUtil, :userInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @userInterface = nil
    end
    

    def initialize(userInterface)
        initialize_fields
        @userInterface = userInterface
    end
    

    # throws Exception
    def onEmailSendFailure(emailEvent)
        to = @userInterface.getSecondaryEmail()
        email = BasicEmail.new(emailEvent.getEmailInfo(), to)
        EmailQueueFactory.getInstance().offer(email.getEmail())
    end
    

    # throws Exception
    def onEmailSendRequest(emailEvent)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("Add Email To Que For Sending: " + emailEvent.to_s, self, "onEmailSendRequest")
        end
        to = @userInterface.getMainEmail()
        email = BasicEmail.new(emailEvent.getEmailInfo(), to)
        EmailQueueFactory.getInstance().offer(email.getEmail())
    end
end

autoload :UserInterface, "org/allbinary/business/user/UserInterface"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :BasicEmail, "org/allbinary/logic/communication/smtp/BasicEmail"
autoload :EmailInterface, "org/allbinary/logic/communication/smtp/EmailInterface"
autoload :EmailEvent, "org/allbinary/logic/communication/smtp/event/EmailEvent"
autoload :EmailQueueFactory, "org/allbinary/logic/communication/smtp/queue/EmailQueueFactory"

