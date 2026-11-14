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
        EmailEventHandlerUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        EmailEventHandlerUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = EmailEventHandlerUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "EmailEventHandlerUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :UserInterface, "org/allbinary/business/user/UserInterface"
autoload :UserConfigurationInterface, "org/allbinary/business/user/modules/configuration/UserConfigurationInterface"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :UserEmailConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface"
autoload :UserEmailEventsConfigurationInterface, "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface"
autoload :UserEmailEventListenerInterface, "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface"
autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
autoload :LogUserEmailEventListenerModule, "org/allbinary/logic/communication/smtp/event/modules/log/LogUserEmailEventListenerModule"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"

begin
    EmailEventHandlerUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

