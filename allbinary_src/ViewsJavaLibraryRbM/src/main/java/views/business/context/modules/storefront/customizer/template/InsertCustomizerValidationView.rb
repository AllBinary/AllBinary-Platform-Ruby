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
# package views.business.context.modules.storefront.customizer.template

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/HttpStoreComponentView"

module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer; module Template

#Sets Template Type
class InsertCustomizerValidationView < ::Views::Business::Context::Modules::Storefront::HttpStoreComponentView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :logUtil, :viewName

    def jfields_views_business_context_modules_storefront_customizer_template_InsertCustomizerValidationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @viewName = nil unless instance_variable_defined?(:@viewName)
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_business_context_modules_storefront_customizer_template_InsertCustomizerValidationView
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, @commonStrings.CONSTRUCTOR)
        end
        requestHashMap = ::Org::Allbinary::Logic::Communication::Http::Request::RequestParams.new(self.getPageContext()).toHashMap()
        @viewName = requestHashMap.get(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoData.getInstance().NAME)
    end
    

    def isValid()
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Started Validation", self, @commonStrings.IS_VALID)
            end
            isValid = true
            if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(@viewName)
                isValid = false
            else
                objectConfig = ::Views::Business::Context::Modules::Storefront::Customizer::Template::ObjectConfig::NoTemplateTransformInfoObjectConfig.new(self.getTransformInfoInterface(), self.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc())
                componentVector = objectConfig.getGroupTransforms()
                size = componentVector.size()
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append("Pointing ")
                    stringBuffer.appendint(componentVector.size())
                    stringBuffer.append(" Components")
                    @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                end
                (0...size).each do |index|
                    transformInfo = componentVector.get(index)
                    transformInfoName = transformInfo.getName()
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                        @logUtil.putF("Setting Template Component with ViewName: " + transformInfoName, self, @commonStrings.IS_VALID)
                    end
                    componentInterface = ::Org::Allbinary::Logic::Visual::Transform::TransformFactory.getInstance().getInstance(@abeClientInformation, transformInfoName, self.getTransformInfoInterface())
                    templateViewObjectConfig = ::Views::Business::Context::Modules::Storefront::Customizer::Template::ObjectConfig::InsertTemplateCustomizerTransformInfoObjectConfig.new(componentInterface.getTransformInfoInterface(), componentInterface.getTransformInfoInterface().getObjectConfigInterface().toXmlDoc())
                    storeName = self.getTransformInfoInterface().getStoreName()
                    endIndex = (@viewName.index(storeName) || -1) + storeName.length
                    storePrepend = @viewName[0...endIndex]
                    viewNamePostfix = @viewName[endIndex...@viewName.length]
                    newViewNameStringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    newViewNameStringBuffer.append(storePrepend)
                    commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
                    transformInfosData = ::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfosData.getInstance()
                    if (transformInfoName.index(transformInfosData.SMALL_PREVIEW) || -1) >= 0
                        newViewNameStringBuffer.append(commonSeps.SPACE)
                        newViewNameStringBuffer.append(transformInfosData.SMALL_PREVIEW)
                    elsif (transformInfoName.index(transformInfosData.PREVIEW) || -1) >= 0
                        newViewNameStringBuffer.append(commonSeps.SPACE)
                        newViewNameStringBuffer.append(transformInfosData.PREVIEW)
                    end
                    newViewNameStringBuffer.append(commonSeps.SPACE)
                    newViewNameStringBuffer.append(viewNamePostfix)
                    if (transformInfoName.index(::Org::Allbinary::Logic::Visual::Transform::Info::GeneratorTransformInfoData::NAME) || -1) >= 0
                        newViewNameStringBuffer.append(commonSeps.SPACE)
                        newViewNameStringBuffer.append(::Org::Allbinary::Logic::Visual::Transform::Info::GeneratorTransformInfoData::NAME)
                    end
                    newViewName = newViewNameStringBuffer.to_s
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                        stringBuffer.append("Template Component: ")
                        stringBuffer.append(transformInfoName)
                        stringBuffer.append("\n Now Pointing To View Name: ")
                        stringBuffer.append(newViewName)
                        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                    end
                    templateViewObjectConfig.set(newViewName)
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                        stringBuffer.append("Template Component: ")
                        stringBuffer.append(transformInfoName)
                        stringBuffer.append("\n with ObjectConfig: ")
                        stringBuffer.append(templateViewObjectConfig.to_s)
                        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                    end
                    componentInterface.getTransformInfoInterface().setObjectConfigInterface(templateViewObjectConfig)
                    updatedTransformInfoHashMap = componentInterface.getTransformInfoInterface().toHashMap()
                    ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance().update(updatedTransformInfoHashMap)
                end
            end
            return isValid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Error: Template Name Is Empty.")
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Getting Validation Info"
        end
    end
    java_overload :validationInfo, 0
    

    def toValidationInfoDoc()
        return nil
    end
    java_overload :toValidationInfoDoc, 0
    

    def toValidationInfoNode(document)
        return nil
    end
    java_overload :toValidationInfoNode, 1
    

    # throws Exception
    def view()
        return ::Views::ValidationOnlyTempUtil.getInstance().view(self)
    end
    java_overload :view, 0
    

    # throws Exception
    def getTransformInfoInterface()
        return InsertCustomizerValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info; autoload :TransformInfoEntityBuilder, "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder" unless const_defined?(:TransformInfoEntityBuilder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :RequestParams, "org/allbinary/logic/communication/http/request/RequestParams" unless const_defined?(:RequestParams, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformFactory, "org/allbinary/logic/visual/transform/TransformFactory" unless const_defined?(:TransformFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; autoload :TransformInterface, "org/allbinary/logic/visual/transform/TransformInterface" unless const_defined?(:TransformInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :GeneratorTransformInfoData, "org/allbinary/logic/visual/transform/info/GeneratorTransformInfoData" unless const_defined?(:GeneratorTransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfo, "org/allbinary/logic/visual/transform/info/TransformInfo" unless const_defined?(:TransformInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoData, "org/allbinary/logic/visual/transform/info/TransformInfoData" unless const_defined?(:TransformInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfosData, "org/allbinary/logic/visual/transform/info/TransformInfosData" unless const_defined?(:TransformInfosData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer; module Template; module ObjectConfig; autoload :InsertTemplateCustomizerTransformInfoObjectConfig, "views/business/context/modules/storefront/customizer/template/objectConfig/InsertTemplateCustomizerTransformInfoObjectConfig" unless const_defined?(:InsertTemplateCustomizerTransformInfoObjectConfig, false); end; end; end; end; end; end; end; end
module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer; module Template; module ObjectConfig; autoload :NoTemplateTransformInfoObjectConfig, "views/business/context/modules/storefront/customizer/template/objectConfig/NoTemplateTransformInfoObjectConfig" unless const_defined?(:NoTemplateTransformInfoObjectConfig, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Views; autoload :ValidationOnlyTempUtil, "views/ValidationOnlyTempUtil" unless const_defined?(:ValidationOnlyTempUtil, false); end

end; end; end; end; end; end; end

