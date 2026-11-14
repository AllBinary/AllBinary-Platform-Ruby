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
# package org.allbinary.logic.visual.transform.template

# require "javax/servlet/jsp/PageContext"

class TransformTemplateFactory
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return TransformTemplateFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(abeClientInformation, templateName, propertiesHashMap, pageContext)
        begin
            transformInfoEntity = TransformInfoEntityBuilder.getInstance()
            transformInfoInterface = transformInfoEntity.get(templateName, propertiesHashMap, pageContext)
            return TransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface)
        rescue StandardError => e
            error = "Failed To Get Instance"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put(error + templateName + "->TemplateFactory", self, "getInstance(viewName, HashMap, PageContext)", e)
            end
            raise e
        end
    end

    def self.instance()
        TransformTemplateFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformTemplateFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformTemplateFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformTemplateFactory"
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
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :TransformInfoObjectFactory, "org/allbinary/logic/visual/transform/info/TransformInfoObjectFactory"
autoload :TransformTemplateInterface, "org/allbinary/logic/visual/transform/template/TransformTemplateInterface"

begin
    TransformTemplateFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

