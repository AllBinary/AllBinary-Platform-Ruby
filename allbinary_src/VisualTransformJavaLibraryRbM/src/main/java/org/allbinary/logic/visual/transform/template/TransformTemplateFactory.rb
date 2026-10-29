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
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoObjectFactory"
require "org/allbinary/logic/visual/transform/template/TransformTemplateInterface"

class TransformTemplateFactory
    @@instance = TransformTemplateFactory.new()
end

