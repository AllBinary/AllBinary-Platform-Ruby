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

require "java/lang/JavaClass"
# require "javax/servlet/jsp/PageContext"

module ::Org; module Allbinary; module Logic; module Visual; module Transform

class TransformFactory
    attr_accessor :logUtil, :commonStrings

    def jfields_org_allbinary_logic_visual_transform_TransformFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_TransformFactory
    end
    

    # throws Exception
    def getInstance_j3_1(abeClientInformation, viewName, ownerTransformInfoInterface)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Creating Transform: " + viewName, self, @commonStrings.GET_INSTANCE)
            end
            ownerTransformInfoHttpInterface = ownerTransformInfoInterface
            transformInfoEntity = ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance()
            transformInfoInterface = transformInfoEntity.get(viewName, ownerTransformInfoHttpInterface.getPropertiesHashMap(), ownerTransformInfoHttpInterface.getPageContext())
            if transformInfoInterface == nil
                raise StandardError.new("No Such View In DB: " + viewName)
            end
            transformInfoInterface.setChild()
            anyType = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Created Transform: " + viewName, self, @commonStrings.GET_INSTANCE)
            end
            return anyType
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
    

    # throws Exception
    def getInstance_j3_2(abeClientInformation, propertiesHashMap, pageContext)
        begin
            transformInfoData = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Creating Transform: " + (propertiesHashMap.get(transformInfoData.NAME)).to_s, self, @commonStrings.GET_INSTANCE)
            end
            transformInfoEntity = ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance()
            transformInfoInterface = transformInfoEntity.get(propertiesHashMap.get(transformInfoData.NAME), propertiesHashMap, pageContext)
            if transformInfoInterface != nil
                transformInfoInterface.override(propertiesHashMap)
            else
                transformInfoInterface = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoHttpFactory.getInstance(propertiesHashMap, pageContext)
            end
            anyType = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Created Transform: " + (propertiesHashMap.get(transformInfoData.NAME)).to_s, self, @commonStrings.GET_INSTANCE)
            end
            return anyType
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Failed To Get Instance: ")
                stringBuffer.append(propertiesHashMap.get(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME))
                stringBuffer.append("->TransformFactory")
                @logUtil.put(stringBuffer.to_s, self, @commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end
    

    # throws Exception
    def getInstance_j2(abeClientInformation, transformInfoInterface)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Creating Transform: " + transformInfoInterface.getName(), self, "getInstance(TransformInfoInterface)")
            end
            anyType = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoObjectFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                @logUtil.putF("Created Transform: " + transformInfoInterface.getName(), self, "getInstance(TransformInfoInterface)")
            end
            return anyType
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getInstance(TransformInfoInterface)", e)
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
        return getInstance_j3_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::System::Security::Licensing::AbeClientInformationInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::String)) && (java_overload_args[2].nil? || java_overload_args[2].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface))
        return getInstance_j3_2(*java_overload_args)
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

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info; autoload :TransformInfoEntity, "org/allbinary/data/tables/transform/info/TransformInfoEntity" unless const_defined?(:TransformInfoEntity, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info; autoload :TransformInfoEntityBuilder, "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder" unless const_defined?(:TransformInfoEntityBuilder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpFactory, "org/allbinary/logic/visual/transform/info/TransformInfoHttpFactory" unless const_defined?(:TransformInfoHttpFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoObjectFactory, "org/allbinary/logic/visual/transform/info/TransformInfoObjectFactory" unless const_defined?(:TransformInfoObjectFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface" unless const_defined?(:TransformInterface, false)

begin
    TransformFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

