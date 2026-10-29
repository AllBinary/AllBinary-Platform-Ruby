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
# package org.allbinary.logic.control.workflow

# require "javax/servlet/jsp/PageContext"

class StoreTagWorkFlowFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return StoreTagWorkFlowFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception, LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, propertiesHashMap, pageContext)
        begin
            workFlowClassName = propertiesHashMap.get(DynamicObjectData::NAME)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Creating WorkFlow: ")
                stringBuffer.append(workFlowClassName)
                stringBuffer.append("->")
                stringBuffer.append(StoreTagWorkFlowFactory.instance.class.name)
                commonStrings = CommonStrings.getInstance()
                @logUtil.putF(stringBuffer.to_s, self, commonStrings.GET_INSTANCE)
            end
            params = Array.new(2, nil)
            classes = Array.new(2, nil)
            classes[0] = propertiesHashMap.class
            classes[1] = AbeFactory.getInstance().getClass(abeClientInformation, "javax.servlet.jsp.PageContext")
            params[0] = propertiesHashMap
            params[1] = pageContext
            return AbeFactory.getInstance().getInstance(abeClientInformation, workFlowClassName, classes, params)
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                workFlowClassName = propertiesHashMap.get(DynamicObjectData::NAME)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Error Creating WorkFlow: ")
                stringBuffer.append(workFlowClassName)
                stringBuffer.append("->")
                stringBuffer.append(StoreTagWorkFlowFactory.instance.class.name)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(stringBuffer.to_s, self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                workFlowClassName = propertiesHashMap.get(DynamicObjectData::NAME)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Error Creating WorkFlow: ")
                stringBuffer.append(workFlowClassName)
                stringBuffer.append("->")
                stringBuffer.append(StoreTagWorkFlowFactory.instance.class.name)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(stringBuffer.to_s, self, commonStrings.GET_INSTANCE, e)
            end
            raise e
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
require "org/allbinary/business/DynamicObjectData"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/loader/AbeFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/control/workflow/StoreWorkFlowInterface"

class StoreTagWorkFlowFactory
    @@instance = StoreTagWorkFlowFactory.new()
end

