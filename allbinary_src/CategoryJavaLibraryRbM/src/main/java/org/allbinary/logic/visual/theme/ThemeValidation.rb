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
# package org.allbinary.logic.visual.theme

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface"
require "org/allbinary/logic/visual/theme/ThemeInterface"

module ::Org; module Allbinary; module Logic; module Visual; module Theme

class ThemeValidation
    include ThemeInterface
    include ::Org::Allbinary::Logic::ControlPackage::Validate::ValidationInterface
    include ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeInterface
    include ::Org::Allbinary::Logic::Visual::Transform::Info::CompositeTransformInfoInterface
    attr_accessor :logUtil, :commonStrings, :transformInfoInterface, :styleValidationInterface, :themeName, :themePreviewImageName, :webAppAbPath, :categoryAbPath, :fileAbPath

    def jfields_org_allbinary_logic_visual_theme_ThemeValidation
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @transformInfoInterface = nil unless instance_variable_defined?(:@transformInfoInterface)
        @styleValidationInterface = nil unless instance_variable_defined?(:@styleValidationInterface)
        @themeName = nil unless instance_variable_defined?(:@themeName)
        @themePreviewImageName = nil unless instance_variable_defined?(:@themePreviewImageName)
        @webAppAbPath = nil unless instance_variable_defined?(:@webAppAbPath)
        @categoryAbPath = nil unless instance_variable_defined?(:@categoryAbPath)
        @fileAbPath = nil unless instance_variable_defined?(:@fileAbPath)
    end

    def initialize(*args)
        case args.length
        when 3 then jnew_org_allbinary_logic_visual_theme_ThemeValidation_3(*args)
        when 2 then jnew_org_allbinary_logic_visual_theme_ThemeValidation_2(*args)
        else raise ArgumentError, "No constructor of ThemeValidation takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_visual_theme_ThemeValidation_2(*java_overload_args)
        return jnew_org_allbinary_logic_visual_theme_ThemeValidation_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::Visual::Transform::Info::TransformInfoInterface)) && (java_overload_args[1].nil? || java_overload_args[1].is_a?(::Java::Util::HashMap))
        return jnew_org_allbinary_logic_visual_theme_ThemeValidation_2_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_visual_theme_ThemeValidation_3(transformInfoInterface, cssStyleValidation, categoryThemePath)
        jfields_org_allbinary_logic_visual_theme_ThemeValidation
        @transformInfoInterface = transformInfoInterface
        pathData = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance()
        pathUtil = ::Org::Allbinary::Logic::Io::Path::PathUtil.getInstance()
        @categoryAbPath = pathUtil.removeNameFromPath(categoryThemePath)
        @themeName = pathData.getNameFromPath(categoryThemePath)
        @styleValidationInterface = cssStyleValidation
        self.init()
    end
    

    def jnew_org_allbinary_logic_visual_theme_ThemeValidation_2_1(transformInfoInterface, hashMap)
        jfields_org_allbinary_logic_visual_theme_ThemeValidation
        @transformInfoInterface = transformInfoInterface
        categoryThemeAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(hashMap.get(ThemeData.getInstance().PATH), ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        pathData = ::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance()
        pathUtil = ::Org::Allbinary::Logic::Io::Path::PathUtil.getInstance()
        @categoryAbPath = pathUtil.removeNameFromPath(categoryThemeAbPath.to_s)
        @themeName = pathData.getNameFromPath(categoryThemeAbPath.to_s)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("CategoryThemePath: ")
            stringBuffer.append(categoryThemeAbPath.to_s)
            stringBuffer.append(" & CategoryPath: ")
            stringBuffer.append(@categoryAbPath.to_s)
            stringBuffer.append(" & ThemeName: ")
            stringBuffer.append(@themeName)
            @logUtil.putF("Http Request Constructor", self, stringBuffer.to_s)
        end
        self.init()
    end
    

    def jnew_org_allbinary_logic_visual_theme_ThemeValidation_2_2(storeThemeCategoryInterface, node)
        jfields_org_allbinary_logic_visual_theme_ThemeValidation
        @transformInfoInterface = storeThemeCategoryInterface.getTransformInfoInterface()
        @categoryAbPath = storeThemeCategoryInterface.getPath()
        themeNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(ThemeData.getInstance().NAME, node.getChildNodes())
        valueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::DataPackage::Tree::Dom::DomData::VALUE, themeNameNode.getChildNodes())
        @themeName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(valueNode)
        previewImageNameNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(ThemeData.getInstance().PREVIEW_IMAGE_NAME, node.getChildNodes())
        previewImageNameValueNode = ::Org::Allbinary::DataPackage::Tree::Dom::DomSearchHelper.getNode(::Org::Allbinary::DataPackage::Tree::Dom::DomData::VALUE, previewImageNameNode.getChildNodes())
        @themePreviewImageName = ::Org::Allbinary::DataPackage::Tree::Dom::DomNodeHelper.getTextNodeValue(previewImageNameValueNode)
        @webAppAbPath = storeThemeCategoryInterface.getWebAppPath()
        self.init(storeThemeCategoryInterface)
    end
    

    # throws Exception
    def init_j0()
        categoryFactoryInterface = ::Org::Allbinary::Business::Category::Store::Theme::StoreThemeCategoryFactory.new(self.getTransformInfoInterface())
        categoryLoaderInterface = ::Org::Allbinary::DataPackage::Tree::Category::CategoryLoaderFactory.getInstance(categoryFactoryInterface)
        rootStoreThemeCategoryInterface = categoryFactoryInterface.getRootInstance()
        self.init(rootStoreThemeCategoryInterface)
    end
    

    # throws Exception
    def init_j1(storeThemeCategoryInterface)
        @fileAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(storeThemeCategoryInterface.getRootFilePath().to_s + @categoryAbPath.to_s, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
        @webAppAbPath = storeThemeCategoryInterface.getWebAppPath()
    end

    def init(*java_overload_args)
        return init_j0(*java_overload_args) if java_overload_args.length == 0
        return init_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method init takes #{java_overload_args.length} arguments"
    end
    

    # throws Exception
    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    java_overload :getTransformInfoInterface, 0
    

    def getName()
        return @themeName
    end
    java_overload :getName, 0
    

    def getPreviewImageName()
        return @themePreviewImageName
    end
    java_overload :getPreviewImageName, 0
    

    def getPreviewImagePath()
        return @webAppAbPath.to_s + @categoryAbPath.to_s
    end
    java_overload :getPreviewImagePath, 0
    

    def getPath()
        return @categoryAbPath.to_s
    end
    java_overload :getPath, 0
    

    # throws Exception
    def getCssStyleValidation()
        if @styleValidationInterface == nil
            cssStyleFileAbPath = ::Org::Allbinary::Logic::Io::Path::AbPath.new(@fileAbPath.to_s, @themeName + (::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP).to_s + (::Org::Allbinary::Business::Category::CategoryData.getInstance().UNCRYPTED_EXTENSION).to_s)
            cryptFileReader = ::Org::Allbinary::Logic::ControlPackage::Crypt::FilePackage::CryptFileReader.new(::Org::Allbinary::Business::Category::CategoryData.getInstance().UNCRYPTED_EXTENSION, ::Org::Allbinary::Business::Category::CategoryData.getInstance().ENCRYPTED_EXTENSION)
            document = ::Org::Allbinary::DataPackage::Tree::Dom::Document::DomDocumentHelper.create(cryptFileReader.get(cssStyleFileAbPath))
            @styleValidationInterface = ::Org::Allbinary::Logic::Visual::Transform::Template::Customizer::Includes::Style::Css::Template::Retail::CssStyleValidation.new(document)
        end
        return @styleValidationInterface
    end
    java_overload :getCssStyleValidation, 0
    

    def isValid()
        begin
            isValid = true
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, @commonStrings.IS_VALID)
            end
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(@categoryAbPath.to_s, ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MINSTRING, ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING)
                isValid = false
            end
            if !::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isValidRequired(@themeName, ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MINSTRING, ::Org::Allbinary::Logic::Communication::Sql::AbSqlData::MAXSTRING)
                isValid = false
            end
            if !self.getCssStyleValidation().isValid()
                isValid = false
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("End: " + (isValid).to_s, self, @commonStrings.IS_VALID)
            end
            return isValid
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    java_overload :isValid, 0
    

    def validationInfo()
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Theme Validation Error")
            return stringBuffer.to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
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
    

    def getKey()
        return self.getName()
    end
    java_overload :getKey, 0
    

    def toVector()
        vector = ::Org::Allbinary::Util::BasicArrayListD.new()
        vector.add(self.getName())
        vector.add(self.getPath())
        vector.add(self.getPreviewImageName())
        vector.add(self.getPreviewImagePath())
        return vector
    end
    java_overload :toVector, 0
    

    def toHashMap()
        themeData = ThemeData.getInstance()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        hashMap.put(themeData.NAME, self.getName())
        hashMap.put(themeData.PATH, self.getPath())
        hashMap.put(themeData.PREVIEW_IMAGE_NAME, self.getPreviewImageName())
        hashMap.put(themeData.PREVIEW_IMAGE_PATH, self.getPreviewImagePath())
        return hashMap
    end
    java_overload :toHashMap, 0
    

    # throws Exception
    def toXmlNode(document)
        node = ::Org::Allbinary::DataPackage::Tree::Dom::ModDomHelper.createNameValueNodes(document, ThemeData.getInstance().NAME, self.toHashMap())
        domNodeInterface = self.getCssStyleValidation()
        node.appendChild(domNodeInterface.toXmlNode(document))
        return node
    end
    java_overload :toXmlNode, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryFactoryInterface, "org/allbinary/business/category/CategoryFactoryInterface" unless const_defined?(:CategoryFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Store; module Theme; autoload :StoreThemeCategoryFactory, "org/allbinary/business/category/store/theme/StoreThemeCategoryFactory" unless const_defined?(:StoreThemeCategoryFactory, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Category; module Store; module Theme; autoload :StoreThemeCategoryInterface, "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface" unless const_defined?(:StoreThemeCategoryInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Category; autoload :CategoryLoaderFactory, "org/allbinary/data/tree/category/CategoryLoaderFactory" unless const_defined?(:CategoryLoaderFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Category; autoload :CategoryLoaderInterface, "org/allbinary/data/tree/category/CategoryLoaderInterface" unless const_defined?(:CategoryLoaderInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomData, "org/allbinary/data/tree/dom/DomData" unless const_defined?(:DomData, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomNodeHelper, "org/allbinary/data/tree/dom/DomNodeHelper" unless const_defined?(:DomNodeHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :DomSearchHelper, "org/allbinary/data/tree/dom/DomSearchHelper" unless const_defined?(:DomSearchHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; autoload :ModDomHelper, "org/allbinary/data/tree/dom/ModDomHelper" unless const_defined?(:ModDomHelper, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tree; module Dom; module Document; autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper" unless const_defined?(:DomDocumentHelper, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :AbSqlData, "org/allbinary/logic/communication/sql/AbSqlData" unless const_defined?(:AbSqlData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; module FilePackage; autoload :CryptFileReader, "org/allbinary/logic/control/crypt/file/CryptFileReader" unless const_defined?(:CryptFileReader, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPath, "org/allbinary/logic/io/path/AbPath" unless const_defined?(:AbPath, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :PathUtil, "org/allbinary/logic/io/path/PathUtil" unless const_defined?(:PathUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Info; autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface" unless const_defined?(:TransformInfoInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Visual; module Transform; module Template; module Customizer; module Includes; module Style; module Css; module Template; module Retail; autoload :CssStyleValidation, "org/allbinary/logic/visual/transform/template/customizer/includes/style/css/template/retail/CssStyleValidation" unless const_defined?(:CssStyleValidation, false); end; end; end; end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Document, "org/w3c/dom/Document" unless const_defined?(:Document, false); end; end; end
module ::Org; module W3c; module Dom; autoload :Node, "org/w3c/dom/Node" unless const_defined?(:Node, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :ThemeData, "org/allbinary/logic/visual/theme/ThemeData" unless const_defined?(:ThemeData, false)

end; end; end; end; end

