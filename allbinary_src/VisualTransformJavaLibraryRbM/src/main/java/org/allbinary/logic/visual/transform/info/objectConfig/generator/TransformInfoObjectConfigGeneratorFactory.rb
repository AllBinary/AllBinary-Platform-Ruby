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

require "java/lang/JavaOverload"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactoryInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; module Generator

class TransformInfoObjectConfigGeneratorFactory
    include TransformInfoObjectConfigGeneratorFactoryInterface
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_transform_info_objectConfig_generator_TransformInfoObjectConfigGeneratorFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return TransformInfoObjectConfigGeneratorFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_generator_TransformInfoObjectConfigGeneratorFactory
    end
    

    # throws Exception
    def getInstance(transformInfoInterface)
        type = transformInfoInterface.getObjectConfigInterface().getOutputTypeName()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
            @logUtil.putF("Generating Instance for type: " + type, self, commonStrings.GET_INSTANCE)
        end
        if type == nil || (type <=> ::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().RESPONSE) == 0 || transformInfoInterface.isChild()
            return BasicGenerator.new()
        elsif (type <=> ::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance().FILE) == 0
            return StoreFileGenerator.new(transformInfoInterface)
        else
            raise StandardError.new("No Such TransformInfoObjectConfigGenerator Type")
        end
    end
    java_overload :getInstance, 1

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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :InputOutputTypeData, "org/allbinary/logic/io/InputOutputTypeData" unless const_defined?(:InputOutputTypeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :BasicGenerator, "org/allbinary/logic/visual/transform/info/objectConfig/generator/BasicGenerator" unless const_defined?(:BasicGenerator, false)
autoload :StoreFileGenerator, "org/allbinary/logic/visual/transform/info/objectConfig/generator/StoreFileGenerator" unless const_defined?(:StoreFileGenerator, false)
autoload :TransformInfoObjectConfigGenerator, "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGenerator" unless const_defined?(:TransformInfoObjectConfigGenerator, false)

begin
    TransformInfoObjectConfigGeneratorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end; end

