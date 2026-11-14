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
        TransformInfoObjectConfigGeneratorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformInfoObjectConfigGeneratorFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformInfoObjectConfigGeneratorFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformInfoObjectConfigGeneratorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :InputOutputTypeData, "org/allbinary/logic/io/InputOutputTypeData"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"
autoload :BasicGenerator, "org/allbinary/logic/visual/transform/info/objectConfig/generator/BasicGenerator"
autoload :StoreFileGenerator, "org/allbinary/logic/visual/transform/info/objectConfig/generator/StoreFileGenerator"
autoload :TransformInfoObjectConfigGenerator, "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGenerator"

begin
    TransformInfoObjectConfigGeneratorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

