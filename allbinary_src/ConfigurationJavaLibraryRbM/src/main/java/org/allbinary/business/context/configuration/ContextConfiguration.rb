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
# package org.allbinary.business.context.configuration

require "org/allbinary/business/context/configuration/ContextConfigurationInterface"

class ContextConfiguration
    include ContextConfigurationInterface
    attr_accessor :logUtil, :commonStrings, :emailServerConfigurationInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @emailServerConfigurationInterface = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, "ContextConfiguration")
        self.setEmailServerConfigurationInterface(EmailServerConfiguration.new())
    end
    

    def constructor1(hashMap)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, "ContextConfiguration(HashMap)")
        self.setEmailServerConfigurationInterface(EmailServerConfiguration.new(hashMap))
    end
    

    def getEmailServerConfigurationInterface()
        return @emailServerConfigurationInterface
    end
    

    def setEmailServerConfigurationInterface(emailServerConfigurationInterface)
        @emailServerConfigurationInterface = emailServerConfigurationInterface
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfiguration"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface"
require "org/allbinary/string/CommonStrings"

