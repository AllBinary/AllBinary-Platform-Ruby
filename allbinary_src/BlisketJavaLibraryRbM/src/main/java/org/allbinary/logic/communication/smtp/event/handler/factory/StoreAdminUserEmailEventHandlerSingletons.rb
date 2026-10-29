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


class StoreAdminUserEmailEventHandlerSingletons
    attr_accessor :logUtil, :commonStrings, :userEmailEventHandlerHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @userEmailEventHandlerHashMap = StdUtil.getInstance().createHashMap()
    end
    

    def self.getInstance()
        return StoreAdminUserEmailEventHandlerSingletons.instance
    end
    

    def initialize()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(userEmailEventNameData, abeClientInformation, storeFrontInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.GET_INSTANCE)
        end
        userEmailEventHandler = @userEmailEventHandlerHashMap.get(userEmailEventNameData)
        if userEmailEventHandler == nil
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
                @logUtil.putF("Creating New Named UserEmailEventHandler", self, @commonStrings.GET_INSTANCE)
            end
            userVector = UserEntityFactory.getInstance().getStoreManagers(storeFrontInterface)
            newUserEmailEventHandler = EmailEventHandlerUtil.getInstance().getEventHandler(abeClientInformation, userEmailEventNameData, userVector)
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/data/tables/user/UserEntityFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
require "org/allbinary/logic/communication/smtp/event/handler/EmailEventHandlerUtil"
require "org/allbinary/logic/communication/smtp/event/handler/UserEmailEventHandler"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonStrings"

class StoreAdminUserEmailEventHandlerSingletons
    @@instance = StoreAdminUserEmailEventHandlerSingletons.new()
end

