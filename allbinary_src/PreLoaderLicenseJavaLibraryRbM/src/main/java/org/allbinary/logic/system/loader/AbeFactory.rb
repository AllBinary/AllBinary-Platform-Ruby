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
# package org.allbinary.logic.system.loader

require "java/lang/Object"
# require "java/lang/reflect/Constructor"

module ::Org; module Allbinary; module Logic; module System; module Loader

class AbeFactory
    attr_accessor :logUtil, :useCustomLoader

    def jfields_org_allbinary_logic_system_loader_AbeFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @useCustomLoader = false
    end
    

    def self.getInstance()
        return AbeFactory.instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_system_loader_AbeFactory
    end
    

    # throws LicensingException
    def getInstance_j2(abeClientInformation, className)
        java_monitor.synchronize do
        begin
            return self.getClass(abeClientInformation, className).newInstance()
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("Failure for: " + className, self, "getInstance(classname)", e)
            end
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("Failure for: " + className, self, "getInstance(classname)", e)
            end
            return nil
        end
        end
    end
    

    # throws LicensingException
    def getInstance_j4(abeClientInformation, className, classes, params)
        java_monitor.synchronize do
        constructor = nil
        begin
            parent = WebappClassLoaderInfo.getLoader()
            if @useCustomLoader
                loader = AbeClassLoader.new(parent, ::Org::Allbinary::Logic::System::Security::AbKeys.getInstance().getKey(abeClientInformation, className))
                myClass = loader.loadClass(className)
                constructor = myClass.getConstructor(classes)
                return constructor.newInstance(params)
            else
                myClass = parent.loadClass(className)
                constructor = myClass.getConstructor(classes)
                return constructor.newInstance(params)
            end
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Failure for: ")
                stringBuffer.append(className)
                stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
                stringBuffer.append(::Org::Allbinary::Logic::Java::AnyType::ConstructorUtil.view(constructor, ::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE))
                @logUtil.put(stringBuffer.to_s, self, "getInstance(className,params)", e)
            end
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Failure for: ")
                stringBuffer.append(className)
                stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().SPACE)
                stringBuffer.append(::Org::Allbinary::Logic::Java::AnyType::ConstructorUtil.view(constructor, ::Org::Allbinary::StringPackage::CommonSeps.getInstance().NEW_LINE))
                @logUtil.put(stringBuffer.to_s, self, "getInstance(className,params)", e)
            end
            return nil
        end
        end
    end

    def getInstance(*java_overload_args)
        return getInstance_j2(*java_overload_args) if java_overload_args.length == 2
        return getInstance_j4(*java_overload_args) if java_overload_args.length == 4
        raise ArgumentError, "No method getInstance takes #{java_overload_args.length} arguments"
    end
    

    # throws LicensingException
    def getClass(abeClientInformation, className)
        java_monitor.synchronize do
        begin
            parent = WebappClassLoaderInfo.getLoader()
            if @useCustomLoader
                loader = AbeClassLoader.new(parent, ::Org::Allbinary::Logic::System::Security::AbKeys.getInstance().getKey(abeClientInformation, className))
                c = loader.loadClass(className)
                return c
            else
                c = parent.loadClass(className)
                return c
            end
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("Failure for: " + className, self, "getClass(className)", e)
            end
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().LOADERERROR)
                @logUtil.put("Failure for: " + className, self, "getClass(className)", e)
            end
            return nil
        end
        end
    end

    def self.instance()
        AbeFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        AbeFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = AbeFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "AbeFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Java; module AnyType; autoload :ConstructorUtil, "org/allbinary/logic/java/anyType/ConstructorUtil" unless const_defined?(:ConstructorUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; autoload :AbKeys, "org/allbinary/logic/system/security/AbKeys" unless const_defined?(:AbKeys, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :AbeClassLoader, "org/allbinary/logic/system/loader/AbeClassLoader" unless const_defined?(:AbeClassLoader, false)
autoload :WebappClassLoaderInfo, "org/allbinary/logic/system/loader/WebappClassLoaderInfo" unless const_defined?(:WebappClassLoaderInfo, false)
require "java/lang/ClassLoader"

begin
    AbeFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

