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
# package org.allbinary.logic.communication.smtp.info

require "org/allbinary/logic/communication/smtp/info/BasicEmailInfo"

class StoreEmailInfo < BasicEmailInfo
    attr_accessor :logUtil, :storeFrontInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @storeFrontInterface = nil
    end
    

    def initialize(storeFrontInterface, subject, textBody)
        super(subject, textBody)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().EMAILLOGGING)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF(commonStrings.START, self, commonStrings.CONSTRUCTOR)
        end
        @storeFrontInterface = storeFrontInterface
        self.init()
    end
    

    # throws Exception
    def init()
        contextConfigurationInterface = @storeFrontInterface.getContextConfigurationInterface()
        emailServerConfigurationInterface = contextConfigurationInterface.getEmailServerConfigurationInterface()
        self.setEmailServerConfigurationInterface(emailServerConfigurationInterface)
    end
end

require "org/allbinary/business/context/configuration/ContextConfigurationInterface"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface"
require "org/allbinary/string/CommonStrings"

