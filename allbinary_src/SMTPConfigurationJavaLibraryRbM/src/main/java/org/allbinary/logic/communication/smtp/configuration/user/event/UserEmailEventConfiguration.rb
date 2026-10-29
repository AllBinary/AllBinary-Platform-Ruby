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

require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface"

class UserEmailEventConfiguration
    include UserEmailEventConfigurationInterface
    attr_accessor :logUtil, :name, :eventListenerClassPath

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @name = nil
        @eventListenerClassPath = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        self.setName(StringUtil.getInstance().EMPTY_STRING)
        self.setEventListenerClassPath(StringUtil.getInstance().EMPTY_STRING)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("New", self, " Constructor")
        end
    end
    

    def constructor1(hashMap)
        initialize_fields
        self.setName(hashMap.get(UserEmailEventConfigurationData::NAME))
        self.setEventListenerClassPath(hashMap.get(UserEmailEventConfigurationData::LISTENER_CLASSPATH))
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF("Log: " + (self.log()).to_s, self, " Constructor")
        end
    end
    

    def getName()
        return @name
    end
    

    def setName(name)
        @name = name
    end
    

    def getEventListenerClassPath()
        return @eventListenerClassPath
    end
    

    def setEventListenerClassPath(eventListenerClassPath)
        @eventListenerClassPath = eventListenerClassPath
    end
    

    def log()
        return "\nUser Email Event Log Info:" + "\nName: " + self.getName() + "\nEventListenerClassPath: " + (self.getEventListenerClassPath()).to_s
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData"

