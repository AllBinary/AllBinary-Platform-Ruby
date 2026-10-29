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
# package admin.taghelpers

# require "javax/servlet/http/HttpServletRequest"
# require "javax/servlet/jsp/PageContext"

class HelperFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws LicensingException
    def self.getInstance(abeClientInformation, factoryName, className, hashMap, httpServletRequest)
        logUtil = LogUtil.getInstance()
        begin
            params = Array.new(2, nil)
            classes = Array.new(2, nil)
            abeFactory = AbeFactory.getInstance()
            classes[0] = hashMap.class
            classes[1] = abeFactory.getClass(abeClientInformation, "javax.servlet.http.HttpServletRequest")
            params[0] = hashMap
            params[1] = httpServletRequest
            anyType = abeFactory.getInstance(abeClientInformation, className, classes, params)
            return anyType
        rescue LicensingException => e
            error = "Failed To Get Instance Args: HashMap=" + hashMap.to_s + " HttpServletRequest=" + (httpServletRequest).to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                logUtil.put(error, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            raise e
        rescue StandardError => e
            error = "Failed To Get Instance"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                logUtil.put(error, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            return nil
        end
    end
    

    # throws LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(abeClientInformation, factoryName, className, hashMap, pageContext)
        logUtil = LogUtil.getInstance()
        begin
            params = Array.new(2, nil)
            classes = Array.new(2, nil)
            abeFactory = AbeFactory.getInstance()
            classes[0] = hashMap.class
            classes[1] = abeFactory.getClass(abeClientInformation, "javax.servlet.jsp.PageContext")
            params[0] = hashMap
            params[1] = pageContext
            anyType = abeFactory.getInstance(abeClientInformation, className, classes, params)
            return anyType
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                error = "Failed To Get Instance Args: HashMap=" + hashMap.to_s + " PageContext=" + (pageContext).to_s
                logUtil.put(error, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            return nil
        end
    end
    

    # throws LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(abeClientInformation, factoryName, className, hashMap, specialhashMap, pageContext)
        logUtil = LogUtil.getInstance()
        begin
            params = Array.new(3, nil)
            classes = Array.new(3, nil)
            abeFactory = AbeFactory.getInstance()
            classes[0] = hashMap.class
            classes[1] = specialhashMap.class
            classes[2] = abeFactory.getClass(abeClientInformation, "javax.servlet.jsp.PageContext")
            params[0] = hashMap
            params[1] = specialhashMap
            params[2] = pageContext
            anyType = abeFactory.getInstance(abeClientInformation, className, classes, params)
            return anyType
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                error = "Failed To Get Instance Args: HashMap=" + hashMap.to_s + " PageContext=" + (pageContext).to_s
                logUtil.put(error, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            return nil
        end
    end
    

    # throws LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(abeClientInformation, factoryName, className)
        logUtil = LogUtil.getInstance()
        begin
            anyType = AbeFactory.getInstance().getInstance(abeClientInformation, className)
            return anyType
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = CommonStrings.getInstance()
                logUtil.put(commonStrings.EXCEPTION, factoryName + "->HelperFactory", "getInstance(String, String, HashMap, PageContext)", e)
            end
            return nil
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/loader/AbeFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/string/CommonStrings"

