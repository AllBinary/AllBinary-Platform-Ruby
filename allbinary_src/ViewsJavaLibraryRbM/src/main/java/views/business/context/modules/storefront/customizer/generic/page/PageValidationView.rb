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

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/business/context/modules/storefront/customizer/generic/page/PageView"

class PageValidationView < PageView
    include ValidationComponentInterface
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "PageViewValidation()")
        end
    end
    

    def isValid()
        begin
            isValid = true
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF(@commonStrings.START, self, @commonStrings.IS_VALID)
            end
            transformInfoEntityInterface = TransformInfoEntityBuilder.getInstance()
            pageObjectConfigInterface = self.getTransformInfoInterface().getObjectConfigInterface()
            allViewsToBeModifiedVector = pageObjectConfigInterface.getGroupTransforms()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                @logUtil.putF("Views To Be Modified: " + (allViewsToBeModifiedVector.size()).to_s, self, "get(transformInfoInterface)")
            end
            size = allViewsToBeModifiedVector.size()
            (0...size).each do |index|
                transformInfoInterface = allViewsToBeModifiedVector.get(index)
                viewNameOfViewToBeModified = transformInfoInterface.getName()
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append(self.getTransformInfoInterface().getName())
                    stringBuffer.append(" is modifying view: ")
                    stringBuffer.append(viewNameOfViewToBeModified)
                    @logUtil.putF(stringBuffer.to_s, self, "insert()")
                end
                httpTransformInfoInterface = self.getTransformInfoInterface()
                specifiedTransformInfoInterface = transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append(self.getTransformInfoInterface().getName())
                    stringBuffer.append(" is adding data to view: ")
                    stringBuffer.append(viewNameOfViewToBeModified)
                    @logUtil.putF(stringBuffer.to_s, self, "insert()")
                end
                hashMap = StdUtil.getInstance().createHashMap()
                title = specifiedTransformInfoInterface.getName().substring(self.getTransformInfoInterface().getStoreName().length())
                if (title <=> "index") == 0
                    hashMap.put(TitleData.getInstance().TEXT, (self.getTransformInfoInterface().getStoreName()).to_s + " - Home Page")
                else
                    hashMap.put(TitleData.getInstance().TEXT, (self.getTransformInfoInterface().getStoreName()).to_s + " -" + title)
                end
                pageValidation = PageValidation.new(hashMap)
                if pageValidation.isValid() == false
                    isValid = false
                end
                if isValid == true
                    document = DomDocumentHelper.create()
                    document.appendChild(pageValidation.toXmlNode(document))
                    documentString = XmlDocumentHelper.toString(document)
                    if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                        stringBuffer = StringMaker.new()
                        stringBuffer.append(viewNameOfViewToBeModified)
                        stringBuffer.append(" is changing data in ")
                        stringBuffer.append(specifiedTransformInfoInterface.getDataFilePath().to_s)
                        stringBuffer.append(" to the following data:\n")
                        stringBuffer.append(documentString)
                        @logUtil.putF(stringBuffer.to_s, self, @commonStrings.IS_VALID)
                    end
                    CustomizerUtil.getInstance().write(specifiedTransformInfoInterface, documentString)
                end
            end
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
            transformInfoEntityInterface = TransformInfoEntityBuilder.getInstance()
            objectConfig = self.getTransformInfoInterface().getObjectConfigInterface()
            httpTransformInfoInterface = self.getTransformInfoInterface()
            allViewsToBeModifiedVector = objectConfig.getGroupTransforms()
            size = allViewsToBeModifiedVector.size()
            (0...size).each do |index|
                transformInfoInterface = allViewsToBeModifiedVector.get(index)
                viewNameOfViewToBeModified = transformInfoInterface.getName()
                specifiedTransformInfoInterface = transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
                hashMap = StdUtil.getInstance().createHashMap()
                title = specifiedTransformInfoInterface.getName().substring(self.getTransformInfoInterface().getStoreName().length())
                if (title <=> "index") == 0
                    hashMap.put(TitleData.getInstance().TEXT, (self.getTransformInfoInterface().getStoreName()).to_s + " - Home Page")
                else
                    hashMap.put(TitleData.getInstance().TEXT, (self.getTransformInfoInterface().getStoreName()).to_s + " -" + title)
                end
                pageValidation = PageValidation.new(hashMap)
                if pageValidation.isValid() == false
                    stringBuffer.append("TransformInfo Name for PageValidation:" + specifiedTransformInfoInterface.getName())
                    stringBuffer.append("PageValidation:" + (hashMap).to_s)
                    stringBuffer.append("PageValidation Info:" + (pageValidation.validationInfo()).to_s)
                end
            end
            return stringBuffer.to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to generate validation error info", self, "validationInfo()", e)
            end
            return "An auto generated page name was invalid."
        end
    end
    

    def toValidationInfoDoc()
        return nil
    end
    

    def toValidationInfoNode(document)
        return nil
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/data/tables/transform/info/TransformInfoEntity"
require "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfo"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"
require "org/allbinary/logic/visual/transform/template/customizer/page/PageValidation"
require "org/allbinary/logic/visual/transform/template/customizer/widgets/title/TitleData"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"
require "views/business/context/modules/storefront/customizer/CustomizerUtil"

