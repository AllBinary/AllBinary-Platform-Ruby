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
# package views.business.context.modules.storefront.customizer.generic.page

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/customizer/generic/page/PageView"

module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer; module Generic; module Page

class PageValidationView < PageView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :logUtil

    def jfields_views_business_context_modules_storefront_customizer_generic_page_PageValidationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_business_context_modules_storefront_customizer_generic_page_PageValidationView
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "PageViewValidation()")
        end
    end
    

    def isValid()
        begin
            isValid = true
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, @commonStrings.IS_VALID)
            end
            transformInfoEntityInterface = ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance()
            pageObjectConfigInterface = self.getTransformInfoInterface().getObjectConfigInterface()
            allViewsToBeModifiedVector = pageObjectConfigInterface.getGroupTransforms()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Views To Be Modified: " + (allViewsToBeModifiedVector.size()).to_s, self, "get(transformInfoInterface)")
            end
            size = allViewsToBeModifiedVector.size()
            (0...size).each do |index|
                transformInfoInterface = allViewsToBeModifiedVector.get(index)
                viewNameOfViewToBeModified = transformInfoInterface.getName()
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append(self.getTransformInfoInterface().getName())
                    stringBuffer.append(" is modifying view: ")
                    stringBuffer.append(viewNameOfViewToBeModified)
                    @logUtil.putF(stringBuffer.to_s, self, "insert()")
                end
                httpTransformInfoInterface = self.getTransformInfoInterface()
                specifiedTransformInfoInterface = transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append(self.getTransformInfoInterface().getName())
                    stringBuffer.append(" is adding data to view: ")
                    stringBuffer.append(viewNameOfViewToBeModified)
                    @logUtil.putF(stringBuffer.to_s, self, "insert()")
                end
                hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
                title = specifiedTransformInfoInterface.getName().substring(self.getTransformInfoInterface().getStoreName().length())
                if (title <=> "index") == 0
                    hashMap.put(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleData.getInstance().TEXT, (self.getTransformInfoInterface().getStoreName()).to_s + " - Home Page")
                else
                    hashMap.put(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleData.getInstance().TEXT, (self.getTransformInfoInterface().getStoreName()).to_s + " -" + title)
                end
                pageValidation = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Page::PageValidation.new(hashMap)
                if pageValidation.isValid() == false
                    isValid = false
                end
                if isValid == true
                    document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
                    document.appendChild(pageValidation.toXmlNode(document))
                    documentString = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document)
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                        stringBuffer.append(viewNameOfViewToBeModified)
                        stringBuffer.append(" is changing data in ")
                        stringBuffer.append(specifiedTransformInfoInterface.getDataFilePath().to_s)
                        stringBuffer.append(" to the following data:\n")
                        stringBuffer.append(documentString)
                        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                    end
                    ::Views::Business::Context::Modules::Storefront::Customizer::CustomizerUtil.getInstance().write(specifiedTransformInfoInterface, documentString)
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
            transformInfoEntityInterface = ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance()
            objectConfig = self.getTransformInfoInterface().getObjectConfigInterface()
            httpTransformInfoInterface = self.getTransformInfoInterface()
            allViewsToBeModifiedVector = objectConfig.getGroupTransforms()
            size = allViewsToBeModifiedVector.size()
            (0...size).each do |index|
                transformInfoInterface = allViewsToBeModifiedVector.get(index)
                viewNameOfViewToBeModified = transformInfoInterface.getName()
                specifiedTransformInfoInterface = transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
                hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
                title = specifiedTransformInfoInterface.getName().substring(self.getTransformInfoInterface().getStoreName().length())
                if (title <=> "index") == 0
                    hashMap.put(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleData.getInstance().TEXT, (self.getTransformInfoInterface().getStoreName()).to_s + " - Home Page")
                else
                    hashMap.put(::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Widgets::Title::TitleData.getInstance().TEXT, (self.getTransformInfoInterface().getStoreName()).to_s + " -" + title)
                end
                pageValidation = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Page::PageValidation.new(hashMap)
                if pageValidation.isValid() == false
                    stringBuffer.append("TransformInfo Name for PageValidation:" + specifiedTransformInfoInterface.getName())
                    stringBuffer.append("PageValidation:" + (hashMap).to_s)
                    stringBuffer.append("PageValidation Info:" + (pageValidation.validationInfo()).to_s)
                end
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "An auto generated page name was invalid."
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
    def getTransformInfoInterface()
        return PageValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info; autoload :TransformInfoEntity, "org/allbinary/data/tables/transform/info/TransformInfoEntity" unless const_defined?(:TransformInfoEntity, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info; autoload :TransformInfoEntityBuilder, "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder" unless const_defined?(:TransformInfoEntityBuilder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfo, "org/allbinary/logic/visual/transform/info/TransformInfo" unless const_defined?(:TransformInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface" unless const_defined?(:TransformInfoObjectConfigInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Page; autoload :PageValidation, "org/allbinary/logic/visual/transform/template/customizer/page/PageValidation" unless const_defined?(:PageValidation, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Widgets; module Title; autoload :TitleData, "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData" unless const_defined?(:TitleData, false); end; end; end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer; autoload :CustomizerUtil, "views/business/context/modules/storefront/customizer/CustomizerUtil" unless const_defined?(:CustomizerUtil, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

