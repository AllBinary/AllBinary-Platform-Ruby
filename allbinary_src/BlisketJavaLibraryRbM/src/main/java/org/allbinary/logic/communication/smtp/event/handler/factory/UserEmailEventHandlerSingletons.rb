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
# package org.allbinary.logic.communication.smtp.event.handler.factory


class UserEmailEventHandlerSingletons
    attr_accessor :logUtil, :commonStrings, :userEmailEventHandlerHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @userEmailEventHandlerHashMap = StdUtil.getInstance().createHashMap()
    end
    

    def self.getInstance()
        return UserEmailEventHandlerSingletons.instance
    end
    

    def initialize()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, userEmailEventNameData, userInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.GET_INSTANCE)
        end
        userEmailEventHandler = @userEmailEventHandlerHashMap.get(userEmailEventNameData)
        if userEmailEventHandler == nil
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Creating New Named UserEmailEventHandler", self, @commonStrings.GET_INSTANCE)
            end
            newUserEmailEventHandler = UserEmailEventHandler.new()
            vector = EmailEventHandlerUtil.getUserEmailEventListenerVector(abeClientInformation, userEmailEventNameData, userInterface)
            newUserEmailEventHandler.addListener(vector)
            newUserEmailEventHandler.addListener(LogUserEmailEventListenerModule.new())
            @userEmailEventHandlerHashMap.put(userEmailEventNameData, newUserEmailEventHandler)
            return newUserEmailEventHandler
        else
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Returning existing UserEmailEventHandler", self, @commonStrings.GET_INSTANCE)
            end
            return userEmailEventHandler
        end
    end

    def self.instance()
        UserEmailEventHandlerSingletons.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        UserEmailEventHandlerSingletons.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = UserEmailEventHandlerSingletons.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "UserEmailEventHandlerSingletons"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :UserInterface, "org/allbinary/business/user/UserInterface"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :UserEmailEventNameData, "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
autoload :EmailEventHandlerUtil, "org/allbinary/logic/communication/smtp/event/handler/EmailEventHandlerUtil"
autoload :UserEmailEventHandler, "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"
autoload :LogUserEmailEventListenerModule, "org/allbinary/logic/communication/smtp/event/modules/log/LogUserEmailEventListenerModule"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

begin
    UserEmailEventHandlerSingletons.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

