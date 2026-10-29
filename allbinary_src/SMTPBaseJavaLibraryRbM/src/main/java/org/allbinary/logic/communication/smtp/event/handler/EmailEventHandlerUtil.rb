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


class EmailEventHandlerUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return EmailEventHandlerUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getEventHandler(abeClientInformation, userEmailEventNameData, userVector)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            stringBuffer = StringMaker.new()
            stringBuffer.append("Returning UserEmailEventHandler for ")
            stringBuffer.appendint(userVector.size())
            stringBuffer.append(" users.")
            @logUtil.putF(stringBuffer.to_s, self, "getEventHandler")
        end
        userEmailEventHandler = UserEmailEventHandler.new()
        userEmailEventHandler.addListener(LogUserEmailEventListenerModule.new())
        size = userVector.size()
        (0...size).each do |index|
            userInterface = userVector.get(index)
            vector = EmailEventHandlerUtil.getUserEmailEventListenerVector(abeClientInformation, userEmailEventNameData, userInterface)
            userEmailEventHandler.addListener(vector)
        end
        return userEmailEventHandler
    end
    

    # throws Exception
    def self.getUserEmailEventListenerVector(abeClientInformation, userEmailEventNameData, userInterface)
        userConfigurationInterface = userInterface.getUserConfigurationInterface()
        userEmailConfigurationInterface = userConfigurationInterface.getUserEmailConfigurationInterface()
        userEmailEventsConfigurationInterface = userEmailConfigurationInterface.getUserEmailEventsConfigurationInterface()
        userEmailEventListenerInterface = userEmailEventsConfigurationInterface.getEventListener(abeClientInformation, userEmailEventNameData, userInterface)
        vector = BasicArrayListD.new()
        vector.add(userEmailEventListenerInterface)
        return vector
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/user/UserInterface"
require "org/allbinary/business/user/modules/configuration/UserConfigurationInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
require "org/allbinary/logic/communication/smtp/event/modules/log/LogUserEmailEventListenerModule"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"

class EmailEventHandlerUtil
    @@instance = EmailEventHandlerUtil.new()
end

