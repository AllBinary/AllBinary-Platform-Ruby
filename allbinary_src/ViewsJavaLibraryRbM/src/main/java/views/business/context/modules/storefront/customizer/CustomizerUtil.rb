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


class CustomizerUtil
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def self.getInstance()
        return CustomizerUtil.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws Exception
    def getTransformInfoInterfaceToCustomize(customizerTransformInfoInterface, transformInfoInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + customizerTransformInfoInterface.getName(), self, "getTransformInfoInterfaceToCustomize()")
        end
        transformInfoEntityInterface = TransformInfoEntityBuilder.getInstance()
        viewName = transformInfoInterface.getName()
        httpTransformInfoInterface = customizerTransformInfoInterface
        customizedTransformInfoInterface = transformInfoEntityInterface.get(viewName, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
        return customizedTransformInfoInterface
    end
    

    # throws Exception
    def getTransformInfoObjectConfigComponentNodesToCustomize(customizerTransformInfoInterface, transformInfoInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + customizerTransformInfoInterface.getName(), self, "getTransformInfoObjectConfigComponentNodesToCustomize()")
        end
        transformInfoEntityInterface = TransformInfoEntityBuilder.getInstance()
        viewName = transformInfoInterface.getName()
        httpTransformInfoInterface = customizerTransformInfoInterface
        customizedTransformInfoInterface = transformInfoEntityInterface.get(viewName, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
        return self.getTransformInfoObjectConfigComponentNodes(customizedTransformInfoInterface)
    end
    

    # throws Exception
    def getTransformInfoObjectConfigComponentNodes(transformInfoInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "getTransformInfoObjectConfigComponentNodes()")
        end
        transformInfoObjectConfigInterface = transformInfoInterface.getObjectConfigInterface()
        return transformInfoObjectConfigInterface.getTransforms()
    end
    

    # throws Exception
    def getTransformInfoObjectConfigGroupComponentNodes(transformInfoInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "getTransformInfoObjectConfigComponentNodes()")
        end
        transformInfoObjectConfigInterface = transformInfoInterface.getObjectConfigInterface()
        return transformInfoObjectConfigInterface.getGroupTransforms()
    end
    

    # throws Exception
    def insert(transformInfoInterface, domNodeInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "insert()")
        end
        transformInfoEntityInterface = TransformInfoEntityBuilder.getInstance()
        allViewsToBeModified = self.getTransformInfoObjectConfigGroupComponentNodes(transformInfoInterface)
        document = DomDocumentHelper.create()
        document.appendChild(domNodeInterface.toXmlNode(document))
        documentString = XmlDocumentHelper.toString(document)
        stringBuffer = StringMaker.new()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(transformInfoInterface.getName())
                stringBuffer.append(" is modifying view: ")
                stringBuffer.append(viewNameOfViewToBeModified)
                @logUtil.putF(stringBuffer.to_s, self, "insert()")
            end
            httpTransformInfoInterface = transformInfoInterface
            specifiedTransformInfoInterface = transformInfoEntityInterface.get(viewNameOfViewToBeModified, httpTransformInfoInterface.getPropertiesHashMap(), httpTransformInfoInterface.getPageContext())
            if specifiedTransformInfoInterface == nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append(transformInfoInterface.getName())
                    stringBuffer.append(" is unable to add data to view: ")
                    stringBuffer.append(viewNameOfViewToBeModified)
                    stringBuffer.append(" since it does not exist")
                    @logUtil.putF(stringBuffer.to_s, self, "insert()")
                end
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF(transformInfoInterface.getName() + " is adding data to view: " + viewNameOfViewToBeModified, self, "insert()")
                end
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
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
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + specifiedTransformInfoInterface.getName(), self, "write()")
        end
        transformInfoEntityInterface = TransformInfoEntityBuilder.getInstance()
        specifiedTransformInfoInterface.setData(documentString)
        transformInfoEntityInterface.update(specifiedTransformInfoInterface.toHashMap())
    end
    

    # throws Exception
    def getViewDataForComponentsInObjectConfig(transformInfoInterface)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, "getViewDataForComponentsInObjectConfig()")
        end
        transformInfoObjectConfigInterface = transformInfoInterface.getObjectConfigInterface()
        allViewsToBeModified = transformInfoObjectConfigInterface.getGroupTransforms()
        transformInfoEntityInterface = TransformInfoEntityBuilder.getInstance()
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
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/data/tables/transform/info/TransformInfoEntity"
require "org/allbinary/data/tables/transform/info/TransformInfoEntityBuilder"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfo"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface"
require "org/w3c/dom/Document"

class CustomizerUtil
    @@instance = CustomizerUtil.new()
end

