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

class NewWorkFlowFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return NewWorkFlowFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception, LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, hashMap, pageContext)
        begin
            className = hashMap.get(DynamicObjectData::NAME)
            params = Array.new(2, nil)
            classes = Array.new(2, nil)
            classes[0] = hashMap.class
            classes[1] = AbeFactory.getInstance().getClass(abeClientInformation, "javax.servlet.jsp.PageContext")
            params[0] = hashMap
            params[1] = pageContext
            anyType = AbeFactory.getInstance().getInstance(abeClientInformation, className, classes, params)
            return WorkFlowWrapper.new(anyType)
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "getInstance(HashMap)", e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "getInstance(HashMap)", e)
            end
            raise e
        end
    end
    

    # throws Exception, LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, className)
        begin
            stringUtil = StringUtil.getInstance()
            if className != nil && (className <=> stringUtil.EMPTY_STRING) != 0
                anyType = AbeFactory.getInstance().getInstance(abeClientInformation, className, nil, nil)
                return WorkFlowWrapper.new(anyType)
            else
                raise StandardError.new("No WorkFlow ClassName")
            end
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.GET_INSTANCE, e)
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
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/loader/AbeFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/control/workflow/WorkFlowInterface"
require "org/allbinary/logic/control/workflow/WorkFlowWrapper"

class NewWorkFlowFactory
    @@instance = NewWorkFlowFactory.new()
end

