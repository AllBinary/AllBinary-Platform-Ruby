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
# package org.allbinary.logic.visual.transform.generator


class TransformGeneratorUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return TransformGeneratorUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def generate(abeClientInformation, transformInfoInterface, ownerTransformInfoInterface)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Generating View: " + transformInfoInterface.getName(), self, "generate()")
            end
            componentInterface = TransformFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface.getName(), ownerTransformInfoInterface)
            result = componentInterface.view()
            httpTransformInfoInterface = componentInterface.getTransformInfoInterface()
            inputOutputTypeData = InputOutputTypeData.getInstance()
            if (result.index("<HTML>") || -1) >= 0
                httpTransformInfoInterface.getPropertiesHashMap().put(inputOutputTypeData.NAME, inputOutputTypeData.DEFAULT)
            else
                httpTransformInfoInterface.getPropertiesHashMap().put(inputOutputTypeData.NAME, inputOutputTypeData.DEFAULT_FRAGMENT)
            end
            StoreFileGenerator.new(componentInterface.getTransformInfoInterface()).process(result)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate a view", self, "generate()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def generate(abeClientInformation, transformInfoDomNode, ownerTransformInfoInterface)
        self.generate(abeClientInformation, transformInfoDomNode.getTransformInfoInterface(), ownerTransformInfoInterface)
    end

    def self.instance()
        TransformGeneratorUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformGeneratorUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformGeneratorUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformGeneratorUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :InputOutputTypeData, "org/allbinary/logic/io/InputOutputTypeData"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :TransformFactory, "org/allbinary/logic/visual/transform/TransformFactory"
autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface"
autoload :TransformInfoDomNode, "org/allbinary/logic/visual/transform/info/TransformInfoDomNode"
autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :StoreFileGenerator, "org/allbinary/logic/visual/transform/info/objectConfig/generator/StoreFileGenerator"

begin
    TransformGeneratorUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

