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

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/customizer/includes/style/theme/ThemeCustomizerView"

class EditThemeValidationView < ThemeCustomizerView
    include ValidationComponentInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
    end
    

    def isValid()
        begin
            isValid = true
            categoryFactoryInterface = StoreThemeCategoryFactory.new(self.getTransformInfoInterface())
            categoryLoaderInterface = CategoryLoaderFactory.getInstance(categoryFactoryInterface)
            rootStoreThemeCategoryInterface = categoryFactoryInterface.getRootInstance()
            storeThemeCategoryInterface = categoryLoaderInterface.getAll(rootStoreThemeCategoryInterface)
            @validationInterface = StoreThemeCategoryPathValidationView.new(storeThemeCategoryInterface)
            isValid = @validationInterface.isValid()
            domNodeInterface = @validationInterface
            document = DomDocumentHelper.create()
            document.appendChild(domNodeInterface.toXmlNode(document))
            documentString = XmlDocumentHelper.toString(document)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.putF("Setting Data: " + documentString, self, @commonStrings.CONSTRUCTOR)
            end
            self.getTransformInfoInterface().setData(documentString)
            return isValid
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            stringBuffer.append(@validationInterface.validationInfo())
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "Error Getting Validation Info"
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

require "org/allbinary/business/category/CategoryFactoryInterface"
require "org/allbinary/business/category/CategoryInterface"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryFactory"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface"
require "org/allbinary/business/category/store/theme/StoreThemeCategoryPathValidationView"
require "org/allbinary/data/tree/category/CategoryLoaderFactory"
require "org/allbinary/data/tree/category/CategoryLoaderInterface"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

