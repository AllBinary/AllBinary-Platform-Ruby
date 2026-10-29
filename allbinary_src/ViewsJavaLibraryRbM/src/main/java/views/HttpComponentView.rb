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
# package views

require "org/allbinary/logic/visual/transform/TransformInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpComposite"

class HttpComponentView < TransformInfoHttpComposite
    include TransformInterface
    attr_accessor :logUtil, :abeClientInformation, :domNodeInterfaceVector, :transformDocumentInterface, :NO_TYPE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @domNodeInterfaceVector = nil
        @transformDocumentInterface = nil
        @NO_TYPE = 0
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, @commonStrings.CONSTRUCTOR)
        end
        @domNodeInterfaceVector = BasicArrayListD.new()
        self.setTransformDocumentInterface(TransformHttpRequestDocumentFactory.getInstance(self.getPageContext(), self.getWeblisketSession()))
    end
    

    def getTypeId()
        return @NO_TYPE
    end
    

    def getTransformDocumentInterface()
        return @transformDocumentInterface
    end
    

    def setTransformDocumentInterface(transformDocumentInterface)
        @transformDocumentInterface = transformDocumentInterface
    end
    

    def addDomNodeInterface(domNodeInterface)
        @domNodeInterfaceVector.add(domNodeInterface)
    end
    

    # throws Exception
    def toXmlDoc()
        begin
            size = @domNodeInterfaceVector.size()
            (0...size).each do |index|
                domNodeInterface = @domNodeInterfaceVector.get(index)
                @transformDocumentInterface.getBaseNode().appendChild(domNodeInterface.toXmlNode(@transformDocumentInterface.getDoc()))
            end
            return self.getTransformDocumentInterface().getDoc()
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "toXmlDoc()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def getDoc()
        document = self.getTransformInfoInterface().getDataDocument()
        node = DomNodeHelper.getFirstChildElement(document)
        if node != nil
            dataNode = self.getTransformDocumentInterface().getDoc().importNode(node, true)
            if dataNode != nil
                self.getTransformDocumentInterface().getBaseNode().appendChild(dataNode)
            end
        end
        return self.getTransformDocumentInterface().getDoc()
    end
    

    # throws Exception
    def view()
        begin
            self.toXmlDoc()
            success = XmlDocumentHelper.toString(self.getDoc())
            result = BasicTransformer.new(@abeClientInformation, self.getTransformInfoInterface()).translate(success)
            return result
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPERERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/data/tree/dom/DomNodeHelper"
require "org/allbinary/data/tree/dom/DomNodeInterface"
require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
require "org/allbinary/logic/visual/transform/BasicTransformer"
require "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"
require "org/allbinary/logic/visual/transform/data/TransformHttpRequestDocumentFactory"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

