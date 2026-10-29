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
# package org.allbinary.business.user.modules.admin.configuration

require "java/lang/Object"
# require "javax/servlet/http/HttpServletRequest"
require "org/allbinary/business/user/modules/admin/configuration/AdminConfigurationInterface"

class AdminConfiguration
    include AdminConfigurationInterface
    attr_accessor :logUtil, :commonStrings, :contextConfigurationInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @contextConfigurationInterface = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        @contextConfigurationInterface = ContextConfigurationInterfaceFactory.getInstance().getInstance(AdminConfigurationData::CONTEXTNAME)
    end
    

    def constructor1(request)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.getFormData(RequestParams.new(request).toHashMap())
    end
    

    def constructor1(storeHashMap)
        initialize_fields
        @logUtil.putF(@commonStrings.START, self, @commonStrings.CONSTRUCTOR)
        self.getFormData(storeHashMap)
    end
    

    # throws Exception
    def getFormData(storeHashMap)
        @logUtil.putF(@commonStrings.START, self, "getFormData")
        self.setContextConfigurationInterface(ContextConfiguration.new(storeHashMap))
    end
    

    # throws Exception
    def write()
        java_monitor.synchronize do
        contextConfigurationDomDocumentMapping = ContextConfigurationDomDocumentMapping.new(self.getContextConfigurationInterface())
        cryptFileWriter = CryptFileWriter.new(ContextConfigurationData.getInstance().UNCRYPTED_EXTENSION, ContextConfigurationData.getInstance().ENCRYPTED_EXTENSION)
        cryptFileWriter.write(ContextConfigurationPathUtil.getAbPath(AdminConfigurationData::CONTEXTNAME), contextConfigurationDomDocumentMapping.toXmlDoc())
        end
    end
    

    def getContextConfigurationInterface()
        return @contextConfigurationInterface
    end
    

    def setContextConfigurationInterface(contextConfigurationInterface)
        @contextConfigurationInterface = contextConfigurationInterface
    end
end

require "java/util/HashMap"
require "org/allbinary/business/context/configuration/ContextConfiguration"
require "org/allbinary/business/context/configuration/ContextConfigurationData"
require "org/allbinary/business/context/configuration/ContextConfigurationDomDocumentMapping"
require "org/allbinary/business/context/configuration/ContextConfigurationInterface"
require "org/allbinary/business/context/configuration/ContextConfigurationInterfaceFactory"
require "org/allbinary/business/context/configuration/ContextConfigurationPathUtil"
require "org/allbinary/logic/communication/http/request/RequestParams"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/file/CryptFileWriter"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/business/user/modules/admin/configuration/AdminConfigurationData"

