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
# package org.allbinary.logic.communication.smtp.configuration.user

require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface"

class UserEmailConfiguration
    include UserEmailConfigurationInterface
    attr_accessor :logUtil, :commonStrings, :userEmailEventsConfigurationInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @userEmailEventsConfigurationInterface = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        end
        self.setUserEmailEventsConfigurationInterface(UserEmailEventsConfiguration.new())
    end
    

    def constructor1(hashMap)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        end
        self.setUserEmailEventsConfigurationInterface(UserEmailEventsConfiguration.new(hashMap))
    end
    

    def getUserEmailEventsConfigurationInterface()
        return @userEmailEventsConfigurationInterface
    end
    

    def setUserEmailEventsConfigurationInterface(userEmailEventsConfigurationInterface)
        @userEmailEventsConfigurationInterface = userEmailEventsConfigurationInterface
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfiguration"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventsConfigurationInterface"
require "org/allbinary/string/CommonStrings"

