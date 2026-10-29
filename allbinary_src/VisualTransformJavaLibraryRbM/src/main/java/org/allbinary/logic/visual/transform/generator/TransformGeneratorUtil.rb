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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/io/InputOutputTypeData"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/visual/transform/TransformFactory"
require "org/allbinary/logic/visual/transform/TransformInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoDomNode"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/StoreFileGenerator"

class TransformGeneratorUtil
    @@instance = TransformGeneratorUtil.new()
end

