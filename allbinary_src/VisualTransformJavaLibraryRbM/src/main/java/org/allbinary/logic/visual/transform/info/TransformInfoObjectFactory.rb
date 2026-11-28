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
# package org.allbinary.logic.visual.transform.info

require "java/lang/JavaClass"

module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info

class TransformInfoObjectFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_visual_transform_info_TransformInfoObjectFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_visual_transform_info_TransformInfoObjectFactory
    end
    

    # throws Exception
    def getInstance(abeClientInformation, transformInfoInterface)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORY)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.putF("Creating View: " + transformInfoInterface.getName(), self, commonStrings.GET_INSTANCE)
            end
            params = Array.new(1, nil)
            classes = Array.new(1, nil)
            classes[0] = TransformInfoInterface
            params[0] = transformInfoInterface
            anyType = ::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance().getInstance(abeClientInformation, transformInfoInterface.getObjectFile(), classes, params)
            if anyType == nil
                if transformInfoInterface != nil
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("\nNo Such View Name: ")
                    stringBuffer.append(transformInfoInterface.getName())
                    stringBuffer.append("\nNo Such View Object: ")
                    stringBuffer.append(transformInfoInterface.getObjectFile())
                    raise StandardError.new(stringBuffer.to_s)
                else
                    raise StandardError.new("No Such View Object since transformInfo is null")
                end
            end
            return anyType
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            error = "Failed To Get Instance: "
            if transformInfoInterface != nil
                error = error + transformInfoInterface.getName()
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(error, self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        rescue StandardError => e
            error = "Failed To Get Instance: "
            if transformInfoInterface != nil
                error = error + transformInfoInterface.getName()
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(error, self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end

    def self.instance()
        TransformInfoObjectFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TransformInfoObjectFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TransformInfoObjectFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TransformInfoObjectFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :AbeFactory, "org/allbinary/logic/system/loader/AbeFactory" unless const_defined?(:AbeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface" unless const_defined?(:TransformInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false)

begin
    TransformInfoObjectFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

