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
# package org.allbinary.logic.visual.transform

# require "javax/servlet/jsp/PageContext"

class TransformFactory
    attr_accessor :logUtil, :commonStrings

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return TransformFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, viewName, ownerTransformInfoInterface)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Creating Transform: " + viewName, self, @commonStrings.GET_INSTANCE)
            end
            ownerTransformInfoHttpInterface = ownerTransformInfoInterface
            transformInfoEntity = TransformInfoEntityBuilder.getInstance()
            transformInfoInterface = transformInfoEntity.get(viewName, ownerTransformInfoHttpInterface.getPropertiesHashMap(), ownerTransformInfoHttpInterface.getPageContext())
            if transformInfoInterface == nil
                raise StandardError.new("No Such View In DB: " + viewName)
            end
            transformInfoInterface.setChild()
            anyType = TransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Created Transform: " + viewName, self, @commonStrings.GET_INSTANCE)
            end
            return anyType
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, propertiesHashMap, pageContext)
        begin
            transformInfoData = TransformInfoData.getInstance()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Creating Transform: " + (propertiesHashMap.get(transformInfoData.NAME)).to_s, self, @commonStrings.GET_INSTANCE)
            end
            transformInfoEntity = TransformInfoEntityBuilder.getInstance()
            transformInfoInterface = transformInfoEntity.get(propertiesHashMap.get(transformInfoData.NAME), propertiesHashMap, pageContext)
            if transformInfoInterface != nil
                transformInfoInterface.override(propertiesHashMap)
            else
                transformInfoInterface = TransformInfoHttpFactory.getInstance(propertiesHashMap, pageContext)
            end
            anyType = TransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Created Transform: " + (propertiesHashMap.get(transformInfoData.NAME)).to_s, self, @commonStrings.GET_INSTANCE)
            end
            return anyType
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                stringBuffer = StringMaker.new()
                stringBuffer.append("Failed To Get Instance: ")
                stringBuffer.append(propertiesHashMap.get(TransformInfoData.getInstance().NAME))
                stringBuffer.append("->TransformFactory")
                @logUtil.put(stringBuffer.to_s, self, @commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, transformInfoInterface)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Creating Transform: " + transformInfoInterface.getName(), self, "getInstance(TransformInfoInterface)")
            end
            anyType = TransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Created Transform: " + transformInfoInterface.getName(), self, "getInstance(TransformInfoInterface)")
            end
            return anyType
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(TransformInfoInterface)", e)
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
require "org/allbinary/data/tables/transform/info/TransformInfoEntity"
require "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpFactory"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoObjectFactory"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/visual/transform/TransformInterface"

class TransformFactory
    @@instance = TransformFactory.new()
end

