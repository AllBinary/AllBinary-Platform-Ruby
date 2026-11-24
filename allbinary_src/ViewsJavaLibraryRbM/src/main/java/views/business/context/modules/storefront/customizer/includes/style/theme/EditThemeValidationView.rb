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
# package views.business.context.modules.storefront.customizer.includes.style.theme

require "java/lang/JavaOverload"
require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/customizer/includes/style/theme/ThemeCustomizerView"

module ::Views; module Business; module Context; module Modules; module Storefront; module Customizer; module Includes; module Style; module Theme

class EditThemeValidationView < ThemeCustomizerView
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationComponentInterface
    attr_accessor :logUtil

    def jfields_views_business_context_modules_storefront_customizer_includes_style_theme_EditThemeValidationView
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        jfields_views_business_context_modules_storefront_customizer_includes_style_theme_EditThemeValidationView
    end
    

    def isValid()
        begin
            isValid = true
            categoryFactoryInterface = ::Org::Allbinary::Business::Category::Store::Theme::StoreThemeCategoryFactory.new(self.getTransformInfoInterface())
            categoryLoaderInterface = ::Org::Allbinary::DataPackage::Tree::Category::CategoryLoaderFactory.getInstance(categoryFactoryInterface)
            rootStoreThemeCategoryInterface = categoryFactoryInterface.getRootInstance()
            storeThemeCategoryInterface = categoryLoaderInterface.getAll(rootStoreThemeCategoryInterface)
            @validationInterface = ::Org::Allbinary::Business::Category::Store::Theme::StoreThemeCategoryPathValidationView.new(storeThemeCategoryInterface)
            isValid = @validationInterface.isValid()
            domNodeInterface = @validationInterface
            document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create()
            document.appendChild(domNodeInterface.toXmlNode(document))
            documentString = ::Org::Allbinary::DataPackage::Tree::Dom::Document::XmlDocumentHelper.toString(document)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.putF("Setting Data: " + documentString, self, @commonStrings.CONSTRUCTOR)
            end
            self.getTransformInfoInterface().setData(documentString)
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
            stringBuffer.append(@validationInterface.validationInfo())
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
    def getTransformInfoInterface()
        return EditThemeValidationView.superclass.java_super_method(:getTransformInfoInterface, 0).bind(self).call()
    end
    java_overload :getTransformInfoInterface, 0
end

module ::Org; module Allbinary; module Business; module Category; autoload :CategoryFactoryInterface, "org/allbinary/business/category/CategoryFactoryInterface" unless const_defined?(:CategoryFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface" unless const_defined?(:CategoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Store; module Theme; autoload :StoreThemeCategoryFactory, "org/allbinary/business/category/store/theme/StoreThemeCategoryFactory" unless const_defined?(:StoreThemeCategoryFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Store; module Theme; autoload :StoreThemeCategoryInterface, "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface" unless const_defined?(:StoreThemeCategoryInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Store; module Theme; autoload :StoreThemeCategoryPathValidationView, "org/allbinary/business/category/store/theme/StoreThemeCategoryPathValidationView" unless const_defined?(:StoreThemeCategoryPathValidationView, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Category; autoload :CategoryLoaderFactory, "org/allbinary/data/tree/category/CategoryLoaderFactory" unless const_defined?(:CategoryLoaderFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Category; autoload :CategoryLoaderInterface, "org/allbinary/data/tree/category/CategoryLoaderInterface" unless const_defined?(:CategoryLoaderInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeInterface, "org/allbinary/data/tree/dom/DomNodeInterface" unless const_defined?(:DomNodeInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper" unless const_defined?(:XmlDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

