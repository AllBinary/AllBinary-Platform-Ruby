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
# package org.allbinary.logic.control.workflow

require "java/lang/JavaClass"
# require "javax/servlet/jsp/PageContext"

module ::Org; module Allbinary; module Logic; module ControlPackage; module Workflow

class TagWorkFlowFactory
    attr_accessor :logUtil

    def jfields_org_allbinary_logic_control_workflow_TagWorkFlowFactory
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return @@instance
    end
    

    def initialize()
        jfields_org_allbinary_logic_control_workflow_TagWorkFlowFactory
    end
    

    # throws Exception, LicensingException
    def getInstance(abeClientInformation, propertiesHashMap, pageContext)
        begin
            workFlowClassName = propertiesHashMap.get(::Org::Allbinary::Business::DynamicObjectData::NAME)
            params = Array.new(2, nil)
            classes = Array.new(2, nil)
            classes[0] = propertiesHashMap.class
            classes[1] = ::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance().getClass(abeClientInformation, "javax.servlet.jsp.PageContext")
            params[0] = propertiesHashMap
            params[1] = pageContext
            return ::Org::Allbinary::Logic::System::Loader::AbeFactory.getInstance().getInstance(abeClientInformation, workFlowClassName, classes, params)
        rescue ::Org::Allbinary::Logic::System::Security::Licensing::LicensingException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                workFlowClassName = propertiesHashMap.get(::Org::Allbinary::Business::DynamicObjectData::NAME)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Failed To Get Instance: ")
                stringBuffer.append(workFlowClassName)
                stringBuffer.append("->")
                stringBuffer.append(@@instance.class.java_name)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(stringBuffer.to_s, self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().TAGHELPERFACTORYERROR)
                workFlowClassName = propertiesHashMap.get(::Org::Allbinary::Business::DynamicObjectData::NAME)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append("Failed To Get Instance: ")
                stringBuffer.append(workFlowClassName)
                stringBuffer.append("->")
                stringBuffer.append(@@instance.class.java_name)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
                @logUtil.put(stringBuffer.to_s, self, commonStrings.GET_INSTANCE, e)
            end
            raise e
        end
    end

    def self.instance()
        TagWorkFlowFactory.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        TagWorkFlowFactory.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = TagWorkFlowFactory.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "TagWorkFlowFactory"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; autoload :DynamicObjectData, "org/allbinary/business/DynamicObjectData" unless const_defined?(:DynamicObjectData, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Loader; autoload :AbeFactory, "org/allbinary/logic/system/loader/AbeFactory" unless const_defined?(:AbeFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :WorkFlowInterface, "org/allbinary/logic/control/workflow/WorkFlowInterface" unless const_defined?(:WorkFlowInterface, false)

begin
    TagWorkFlowFactory.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end

