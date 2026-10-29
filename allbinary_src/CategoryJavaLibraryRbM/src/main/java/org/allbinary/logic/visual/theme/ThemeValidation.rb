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

require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/logic/control/validate/ValidationInterface"
require "org/allbinary/logic/visual/transform/info/CompositeTransformInfoInterface"
require "org/allbinary/logic/visual/theme/ThemeInterface"

class ThemeValidation
    include ThemeInterface
    include ValidationInterface
    include DomNodeInterface
    include CompositeTransformInfoInterface
    attr_accessor :logUtil, :commonStrings, :transformInfoInterface, :styleValidationInterface, :themeName, :themePreviewImageName, :webAppAbPath, :categoryAbPath, :fileAbPath

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @transformInfoInterface = nil
        @styleValidationInterface = nil
        @themeName = nil
        @themePreviewImageName = nil
        @webAppAbPath = nil
        @categoryAbPath = nil
        @fileAbPath = nil
    end

    def initialize(*args)
        case args.length
        when 3 then constructor3(*args)
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor3(transformInfoInterface, cssStyleValidation, categoryThemePath)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        pathData = AbPathData.getInstance()
        pathUtil = PathUtil.getInstance()
        @categoryAbPath = pathUtil.removeNameFromPath(categoryThemePath)
        @themeName = pathData.getNameFromPath(categoryThemePath)
        @styleValidationInterface = cssStyleValidation
        self.init()
    end
    

    def constructor2(transformInfoInterface, hashMap)
        initialize_fields
        @transformInfoInterface = transformInfoInterface
        categoryThemeAbPath = AbPath.new(hashMap.get(ThemeData.getInstance().PATH), StringUtil.getInstance().EMPTY_STRING)
        pathData = AbPathData.getInstance()
        pathUtil = PathUtil.getInstance()
        @categoryAbPath = pathUtil.removeNameFromPath(categoryThemeAbPath.to_s)
        @themeName = pathData.getNameFromPath(categoryThemeAbPath.to_s)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            stringBuffer = StringMaker.new()
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
    

    def constructor2(storeThemeCategoryInterface, node)
        initialize_fields
        @transformInfoInterface = storeThemeCategoryInterface.getTransformInfoInterface()
        @categoryAbPath = storeThemeCategoryInterface.getPath()
        themeNameNode = DomSearchHelper.getNode(ThemeData.getInstance().NAME, node.getChildNodes())
        valueNode = DomSearchHelper.getNode(DomData::VALUE, themeNameNode.getChildNodes())
        @themeName = DomNodeHelper.getTextNodeValue(valueNode)
        previewImageNameNode = DomSearchHelper.getNode(ThemeData.getInstance().PREVIEW_IMAGE_NAME, node.getChildNodes())
        previewImageNameValueNode = DomSearchHelper.getNode(DomData::VALUE, previewImageNameNode.getChildNodes())
        @themePreviewImageName = DomNodeHelper.getTextNodeValue(previewImageNameValueNode)
        @webAppAbPath = storeThemeCategoryInterface.getWebAppPath()
        self.init(storeThemeCategoryInterface)
    end
    

    # throws Exception
    def init()
        categoryFactoryInterface = StoreThemeCategoryFactory.new(self.getTransformInfoInterface())
        categoryLoaderInterface = CategoryLoaderFactory.getInstance(categoryFactoryInterface)
        rootStoreThemeCategoryInterface = categoryFactoryInterface.getRootInstance()
        self.init(rootStoreThemeCategoryInterface)
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def init(storeThemeCategoryInterface)
        @fileAbPath = AbPath.new(storeThemeCategoryInterface.getRootFilePath().to_s + @categoryAbPath.to_s, StringUtil.getInstance().EMPTY_STRING)
        @webAppAbPath = storeThemeCategoryInterface.getWebAppPath()
    end
    

    # throws Exception
    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    

    def getName()
        return @themeName
    end
    

    def getPreviewImageName()
        return @themePreviewImageName
    end
    

    def getPreviewImagePath()
        return @webAppAbPath.to_s + @categoryAbPath.to_s
    end
    

    def getPath()
        return @categoryAbPath.to_s
    end
    

    # throws Exception
    def getCssStyleValidation()
        if @styleValidationInterface == nil
            cssStyleFileAbPath = AbPath.new(@fileAbPath.to_s, @themeName + (AbPathData.getInstance().EXTENSION_SEP).to_s + (CategoryData.getInstance().UNCRYPTED_EXTENSION).to_s)
            cryptFileReader = CryptFileReader.new(CategoryData.getInstance().UNCRYPTED_EXTENSION, CategoryData.getInstance().ENCRYPTED_EXTENSION)
            document = DomDocumentHelper.create(cryptFileReader.get(cssStyleFileAbPath))
            @styleValidationInterface = CssStyleValidation.new(document)
        end
        return @styleValidationInterface
    end
    

    def isValid()
        begin
            isValid = true
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, @commonStrings.IS_VALID)
            end
            if !StringValidationUtil.getInstance().isValidRequired(@categoryAbPath.to_s, AbSqlData::MINSTRING, AbSqlData::MAXSTRING)
                isValid = false
            end
            if !StringValidationUtil.getInstance().isValidRequired(@themeName, AbSqlData::MINSTRING, AbSqlData::MAXSTRING)
                isValid = false
            end
            if !self.getCssStyleValidation().isValid()
                isValid = false
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("End: " + (isValid).to_s, self, @commonStrings.IS_VALID)
            end
            return isValid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append("Theme Validation Error")
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Validating Form"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
    

    def getKey()
        return self.getName()
    end
    

    def toVector()
        vector = BasicArrayListD.new()
        vector.add(self.getName())
        vector.add(self.getPath())
        vector.add(self.getPreviewImageName())
        vector.add(self.getPreviewImagePath())
        return vector
    end
    

    def toHashMap()
        themeData = ThemeData.getInstance()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(themeData.NAME, self.getName())
        hashMap.put(themeData.PATH, self.getPath())
        hashMap.put(themeData.PREVIEW_IMAGE_NAME, self.getPreviewImageName())
        hashMap.put(themeData.PREVIEW_IMAGE_PATH, self.getPreviewImagePath())
        return hashMap
    end
    

    # throws Exception
    def toXmlNode(document)
        node = ModDomHelper.createNameValueNodes(document, ThemeData.getInstance().NAME, self.toHashMap())
        domNodeInterface = self.getCssStyleValidation()
        node.appendChild(domNodeInterface.toXmlNode(document))
        return node
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/category/CategoryData"
require "org/allbinary/business/category/CategoryFactoryInterface"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryFactory"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface"
require "org/allbinary/data/tree/category/CategoryLoaderFactory"
require "org/allbinary/data/tree/category/CategoryLoaderInterface"
require "org/allbinary/data/tree/dom/DomData"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomSearchHelper"
require "org/allbinary/data/tree/dom/ModDomHelper"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/communication/sql/AbSqlData"
require "org/allbinary/logic/control/crypt/file/CryptFileReader"
require "org/allbinary/logic/io/path/AbPath"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/io/path/PathUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/template/customizer/includes/style/css/template/retail/CssStyleValidation"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "org/allbinary/logic/visual/theme/ThemeData"

