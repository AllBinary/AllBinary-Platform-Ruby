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

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Generator

class TransformGeneratorUtil
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_transform_generator_TransformGeneratorUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_generator_TransformGeneratorUtil
    end
    

    # throws Exception
    def generate_j3_1(abeClientInformation, transformInfoInterface, ownerTransformInfoInterface)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Generating View: " + transformInfoInterface.getName(), self, "generate()")
            end
            componentInterface = ::Org::Allbinary::Logic::Visual::Transform::TransformFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface.getName(), ownerTransformInfoInterface)
            result = componentInterface.view()
            httpTransformInfoInterface = componentInterface.getTransformInfoInterface()
            inputOutputTypeData = ::Org::Allbinary::Logic::Io::InputOutputTypeData.getInstance()
            if (result.index("<HTML>") || -1) >= 0
                httpTransformInfoInterface.getPropertiesHashMap().put(inputOutputTypeData.NAME, inputOutputTypeData.DEFAULT)
            else
                httpTransformInfoInterface.getPropertiesHashMap().put(inputOutputTypeData.NAME, inputOutputTypeData.DEFAULT_FRAGMENT)
            end
            ::Org::Allbinary::Logic::Visual::Transform::Info::ObjectConfig::Generator::StoreFileGenerator.new(componentInterface.getTransformInfoInterface()).process(result)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to generate a view", self, "generate()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def generate_j3_2(abeClientInformation, transformInfoDomNode, ownerTransformInfoInterface)
        self.generate(abeClientInformation, transformInfoDomNode.getTransformInfoInterface(), ownerTransformInfoInterface)
    end

    def generate(*java_overload_args)
        return generate_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method generate takes #{java_overload_args.length} arguments"
    end

    def generate_j3(*java_overload_args)
        return generate_j3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::System::Security::Licensing::AbeClientInformationInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface))
        return generate_j3_2(*java_overload_args)
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

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; autoload :InputOutputTypeData, "org/allbinary/logic/io/InputOutputTypeData" unless const_defined?(:InputOutputTypeData, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformFactory, "org/allbinary/logic/visual/transform/TransformFactory" unless const_defined?(:TransformFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface" unless const_defined?(:TransformInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoDomNode, "org/allbinary/logic/visual/transform/info/TransformInfoDomNode" unless const_defined?(:TransformInfoDomNode, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; module Generator; autoload :StoreFileGenerator, "org/allbinary/logic/visual/transform/info/objectConfig/generator/StoreFileGenerator" unless const_defined?(:StoreFileGenerator, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    TransformGeneratorUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

