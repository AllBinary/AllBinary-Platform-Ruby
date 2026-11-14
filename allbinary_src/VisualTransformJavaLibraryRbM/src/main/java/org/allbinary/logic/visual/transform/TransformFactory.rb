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
        TransformFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :TransformInfoEntity, "org/allbinary/data/tables/transform/info/TransformInfoEntity"
autoload :TransformInfoEntityBuilder, "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData"
autoload :TransformInfoHttpFactory, "org/allbinary/logic/visual/transform/info/TransformInfoHttpFactory"
autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :TransformInfoObjectFactory, "org/allbinary/logic/visual/transform/info/TransformInfoObjectFactory"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface"

begin
    TransformFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

