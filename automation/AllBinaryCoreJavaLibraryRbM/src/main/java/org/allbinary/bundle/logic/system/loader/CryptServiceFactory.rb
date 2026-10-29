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
# package org.allbinary.bundle.logic.system.loader

require "org/osgi/framework/ServiceFactory"

class CryptServiceFactory
    include ServiceFactory
    attr_accessor :logUtil, :commonStrings, :cryptService

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @cryptService = CryptService.new()
    end
    

    def initialize()
        initialize_fields
    end
    

    def getService(bundle, registration)
        @logUtil.putF(@commonStrings.START, self, "getService")
        return @cryptService
    end
    

    def ungetService(bundle, registration, service)
    end
end

require "org/osgi/framework/Bundle"
require "org/osgi/framework/ServiceRegistration"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/bundle/logic/system/loader/CryptService"

