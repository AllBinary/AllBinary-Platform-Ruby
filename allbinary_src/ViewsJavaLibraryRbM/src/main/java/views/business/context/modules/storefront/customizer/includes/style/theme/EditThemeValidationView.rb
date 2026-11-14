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

autoload :CategoryFactoryInterface, "org/allbinary/business/category/CategoryFactoryInterface"
autoload :CategoryInterface, "org/allbinary/business/category/CategoryInterface"
autoload :StoreThemeCategoryFactory, "org/allbinary/business/category/store/theme/StoreThemeCategoryFactory"
autoload :StoreThemeCategoryInterface, "org/allbinary/business/category/store/theme/StoreThemeCategoryInterface"
autoload :StoreThemeCategoryPathValidationView, "org/allbinary/business/category/store/theme/StoreThemeCategoryPathValidationView"
autoload :CategoryLoaderFactory, "org/allbinary/data/tree/category/CategoryLoaderFactory"
autoload :CategoryLoaderInterface, "org/allbinary/data/tree/category/CategoryLoaderInterface"
autoload :DomNodeInterface, "org/allbinary/data/tree/dom/DomNodeInterface"
autoload :DomDocumentHelper, "org/allbinary/data/tree/dom/document/DomDocumentHelper"
autoload :XmlDocumentHelper, "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

