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
# package org.allbinary.logic.visual.transform.info.objectConfig

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactoryBase"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig

class TransformInfoObjectConfigAndManipulatorFactory < TransformInfoObjectConfigAndManipulatorFactoryBase
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfigAndManipulatorFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        super()
        jfields_org_allbinary_logic_visual_transform_info_objectConfig_TransformInfoObjectConfigAndManipulatorFactory
    end
    

    # throws Exception
    def getInstance_j3_1(abeClientInformation, transformInfoInterface, objectConfigFileAbPath)
        begin
            data = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(TransformInfoObjectConfigData.getInstance().UNCRYPTED_EXTENSION, TransformInfoObjectConfigData.getInstance().ENCRYPTED_EXTENSION).get(objectConfigFileAbPath)
            return self.getInstance(abeClientInformation, transformInfoInterface, ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(data))
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Could Not Load Object Config", TransformInfoObjectConfigAndManipulatorFactory.getInstance(), @commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
    

    # throws Exception
    def getInstance_j2(abeClientInformation, transformInfoInterface)
        begin
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            if transformInfoInterface != nil && !stringValidationUtil.isEmpty(transformInfoInterface.getStoreName())
                return GenericStoreTransformInfoObjectConfig.new(abeClientInformation, transformInfoInterface)
            else
                return TransformInfoObjectConfig.new(transformInfoInterface)
            end
        rescue StandardError => e
            error = "Failed To Get Instance: "
            if transformInfoInterface != nil
                error = error + transformInfoInterface.getName()
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, TransformInfoObjectConfigAndManipulatorFactory.getInstance(), @commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
    

    # throws Exception
    def getInstance_j3_2(abeClientInformation, transformInfoInterface, document)
        begin
            stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
            if transformInfoInterface != nil && !stringValidationUtil.isEmpty(transformInfoInterface.getStoreName())
                return GenericStoreTransformInfoObjectConfig.new(abeClientInformation, transformInfoInterface, document)
            else
                return TransformInfoObjectConfig.new(transformInfoInterface, document)
            end
        rescue StandardError => e
            error = "Failed To Get Instance: "
            if transformInfoInterface != nil
                error = error + transformInfoInterface.getName()
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, TransformInfoObjectConfigAndManipulatorFactory.getInstance(), "getInstance(document)", e)
            end
            raise e
        end
    end

    def getInstance(*java_overload_args)
        return getInstance_j3(*java_overload_args) if java_overload_args.length == 3
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end

    def getInstance_j3(*java_overload_args)
        return getInstance_j3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::System::Security::Licensing::AbeClientInformationInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Org::Allbinary::Logic::Io::Path::AbPath))
        return getInstance_j3_2(*java_overload_args)
    end

    def self.instance()
        TransformInfoObjectConfigAndManipulatorFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformInfoObjectConfigAndManipulatorFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformInfoObjectConfigAndManipulatorFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformInfoObjectConfigAndManipulatorFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :GenericStoreTransformInfoObjectConfig, "org/allbinary/logic/visual/transform/info/objectConfig/GenericStoreTransformInfoObjectConfig" unless const_defined?(:GenericStoreTransformInfoObjectConfig, false)
autoload :TransformInfoObjectConfig, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig" unless const_defined?(:TransformInfoObjectConfig, false)
autoload :TransformInfoObjectConfigData, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigData" unless const_defined?(:TransformInfoObjectConfigData, false)
autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface" unless const_defined?(:TransformInfoObjectConfigInterface, false)

begin
    TransformInfoObjectConfigAndManipulatorFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

