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
# package views.business.context.modules.storefront.customizer

require "java/lang/JavaClass"

module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer

class CustomizerUtil
    attr_accessor :logUtil

    def jfields_views_business_context_modules_storefront_customizer_CustomizerUtil
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def self.getInstance()
        return CustomizerUtil.instance
    end
    

    def initialize()
        jfields_views_business_context_modules_storefront_customizer_CustomizerUtil
    end
    

    # throws Exception
    def getTransformInfoInterfaceToCustomize(customizerTransformInfoInterface, transformInfoInterface)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + customizerTransformInfoInterface.getName(), self, "getTransformInfoInterfaceToCustomize()")
        end
        transformInfoEntityInterface = ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance()
        viewName = transformInfoInterface.getName()
        httpTransformInfoInterface = customizerTransformInfoInterface
        customizedTransformInfoInterface = transformInfoEntityInterface.get(viewName, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
        return customizedTransformInfoInterface
    end
    

    # throws Exception
    def getTransformInfoObjectConfigComponentNodesToCustomize(customizerTransformInfoInterface, transformInfoInterface)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + customizerTransformInfoInterface.getName(), self, "getTransformInfoObjectConfigComponentNodesToCustomize()")
        end
        transformInfoEntityInterface = ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance()
        viewName = transformInfoInterface.getName()
        httpTransformInfoInterface = customizerTransformInfoInterface
        customizedTransformInfoInterface = transformInfoEntityInterface.get(viewName, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
        return self.getTransformInfoObjectConfigComponentNodes(customizedTransformInfoInterface)
    end
    

    # throws Exception
    def getTransformInfoObjectConfigComponentNodes(transformInfoInterface)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "getTransformInfoObjectConfigComponentNodes()")
        end
        transformInfoObjectConfigInterface = transformInfoInterface.getObjectConfigInterface()
        return transformInfoObjectConfigInterface.getTransforms()
    end
    

    # throws Exception
    def getTransformInfoObjectConfigGroupComponentNodes(transformInfoInterface)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "getTransformInfoObjectConfigComponentNodes()")
        end
        transformInfoObjectConfigInterface = transformInfoInterface.getObjectConfigInterface()
        return transformInfoObjectConfigInterface.getGroupTransforms()
    end
    

    # throws Exception
    def insert(transformInfoInterface, domNodeInterface)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "insert()")
        end
        transformInfoEntityInterface = ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance()
        allViewsToBeModified = self.getTransformInfoObjectConfigGroupComponentNodes(transformInfoInterface)
        document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
        document.appendChild(domNodeInterface.toXmlNode(document))
        documentString = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer.append("Total Views For Modification: ")
            stringBuffer.appendint(allViewsToBeModified.size())
            stringBuffer.append(" New Xml/Data: ")
            stringBuffer.append(documentString)
            @logUtil.putF(stringBuffer.to_s, self, "insert()")
        end
        transformInfoInterface.setData(documentString)
        size = allViewsToBeModified.size()
        (0...size).each do |index|
            transformInfo = allViewsToBeModified.get(index)
            viewNameOfViewToBeModified = transformInfo.getName()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(transformInfoInterface.getName())
                stringBuffer.append(" is modifying view: ")
                stringBuffer.append(viewNameOfViewToBeModified)
                @logUtil.putF(stringBuffer.to_s, self, "insert()")
            end
            httpTransformInfoInterface = transformInfoInterface
            specifiedTransformInfoInterface = transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
            if specifiedTransformInfoInterface == nil
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append(transformInfoInterface.getName())
                    stringBuffer.append(" is unable to add data to view: ")
                    stringBuffer.append(viewNameOfViewToBeModified)
                    stringBuffer.append(" since it does not exist")
                    @logUtil.putF(stringBuffer.to_s, self, "insert()")
                end
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF(transformInfoInterface.getName() + " is adding data to view: " + viewNameOfViewToBeModified, self, "insert()")
                end
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append(viewNameOfViewToBeModified)
                    stringBuffer.append(" is changing data in ")
                    stringBuffer.append(specifiedTransformInfoInterface.getDataFilePath().to_s)
                    stringBuffer.append(" to the following data:\n")
                    stringBuffer.append(documentString)
                    @logUtil.putF(stringBuffer.to_s, self, "insert()")
                end
                self.write(specifiedTransformInfoInterface, documentString)
            end
        end
    end
    

    # throws Exception
    def write(specifiedTransformInfoInterface, documentString)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + specifiedTransformInfoInterface.getName(), self, "write()")
        end
        transformInfoEntityInterface = ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance()
        specifiedTransformInfoInterface.setData(documentString)
        transformInfoEntityInterface.update(specifiedTransformInfoInterface.toHashMap())
    end
    

    # throws Exception
    def getViewDataForComponentsInObjectConfig(transformInfoInterface)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "getViewDataForComponentsInObjectConfig()")
        end
        transformInfoObjectConfigInterface = transformInfoInterface.getObjectConfigInterface()
        allViewsToBeModified = transformInfoObjectConfigInterface.getGroupTransforms()
        transformInfoEntityInterface = ::Org::Allbinary::DataPackage::Tables::Transform::Info::TransformInfoEntityBuilder.getInstance()
        size = allViewsToBeModified.size()
        (0...size).each do |index|
            nextTransformInfoInterface = allViewsToBeModified.get(index)
            viewNameOfViewToBeModified = nextTransformInfoInterface.getName()
            httpTransformInfoInterface = transformInfoInterface
            specifiedTransformInfoInterface = transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
            return specifiedTransformInfoInterface.getDataDocument()
        end
        raise StandardError.new("No Components Specified in ObjectConfig")
    end

    def self.instance()
        CustomizerUtil.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        CustomizerUtil.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = CustomizerUtil.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "CustomizerUtil"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info; autoload :TransformInfoEntity, "org/allbinary/data/tables/transform/info/TransformInfoEntity" unless const_defined?(:TransformInfoEntity, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; module Transform; module Info; autoload :TransformInfoEntityBuilder, "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder" unless const_defined?(:TransformInfoEntityBuilder, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeInterface, "org/allbinary/data/tree/dom/DomNodeInterface" unless const_defined?(:DomNodeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfo, "org/allbinary/logic/visual/transform/info/TransformInfo" unless const_defined?(:TransformInfo, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoHttpInterface, "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface" unless const_defined?(:TransformInfoHttpInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; module ObjectConfig; autoload :TransformInfoObjectConfigInterface, "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface" unless const_defined?(:TransformInfoObjectConfigInterface, false); end; end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    CustomizerUtil.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end

