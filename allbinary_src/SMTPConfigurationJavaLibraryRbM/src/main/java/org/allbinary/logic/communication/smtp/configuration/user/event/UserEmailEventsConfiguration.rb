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
# package org.allbinary.logic.communication.smtp.configuration.user.event

require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface"

class UserEmailEventsConfiguration
    include UserEmailEventsConfigurationInterface
    attr_accessor :logUtil, :commonStrings, :emailEventHashMap

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @emailEventHashMap = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        self.init()
    end
    

    def constructor1(hashMap)
        initialize_fields
        self.init()
    end
    

    def init()
        @emailEventHashMap = StdUtil.getInstance().createHashMap()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, " Constructor")
        end
    end
    

    def getEventConfigurationHashMap()
        return @emailEventHashMap
    end
    

    def addUserEmailEventConfiguration(userEmailEventConfigurationInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("Adding: " + (userEmailEventConfigurationInterface.log()).to_s, self, "addUserEmailEventConfiguration")
        end
        @emailEventHashMap.put(userEmailEventConfigurationInterface.getName(), userEmailEventConfigurationInterface)
    end
    

    # throws Exception
    def getEventListener(abeClientInformation, userEmailEventNameData, userInterface)
        userEmailEventConfigurationInterface = @emailEventHashMap.get(userEmailEventNameData.to_s)
        return UserEmailEventListenerFactory.getInstance(abeClientInformation, userEmailEventConfigurationInterface, userInterface)
    end
end

require "java/util/HashMap"
require "org/allbinary/business/user/UserInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventListenerFactory"

