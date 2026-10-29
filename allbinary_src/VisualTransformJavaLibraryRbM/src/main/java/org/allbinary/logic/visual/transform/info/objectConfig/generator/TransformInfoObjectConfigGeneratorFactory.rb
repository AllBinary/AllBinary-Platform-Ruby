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
# package org.allbinary.logic.visual.transform.info.objectConfig.generator

require "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactoryInterface"

class TransformInfoObjectConfigGeneratorFactory
    include TransformInfoObjectConfigGeneratorFactoryInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return TransformInfoObjectConfigGeneratorFactory.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def getInstance(transformInfoInterface)
        type = transformInfoInterface.getObjectConfigInterface().getOutputTypeName()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            commonStrings = CommonStrings.getInstance()
            @logUtil.putF("Generating Instance for type: " + type, self, commonStrings.GET_INSTANCE)
        end
        if type == nil || (type <=> InputOutputTypeData.getInstance().RESPONSE) == 0 || transformInfoInterface.isChild()
            return BasicGenerator.new()
        elsif (type <=> InputOutputTypeData.getInstance().FILE) == 0
            return StoreFileGenerator.new(transformInfoInterface)
        else
            raise StandardError.new("No Such TransformInfoObjectConfigGenerator Type")
        end
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
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/BasicGenerator"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/StoreFileGenerator"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGenerator"

class TransformInfoObjectConfigGeneratorFactory
    @@instance = TransformInfoObjectConfigGeneratorFactory.new()
end

