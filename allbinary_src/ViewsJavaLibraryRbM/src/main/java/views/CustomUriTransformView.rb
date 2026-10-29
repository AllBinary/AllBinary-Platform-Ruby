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

class CustomUriTransformView
    include TransformInterface
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :transformInfoInterface, :transformDocumentInterface, :NO_TYPE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @transformInfoInterface = nil
        @transformDocumentInterface = nil
        @NO_TYPE = 0
    end
    

    def initialize(transformInfoInterface)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
            @logUtil.putF("View Name: " + transformInfoInterface.getName(), self, @commonStrings.CONSTRUCTOR)
        end
        self.setTransformInfoInterface(transformInfoInterface)
        self.setTransformDocumentInterface(TransformDocumentFactory.getInstance())
    end
    

    def getTypeId()
        return @NO_TYPE
    end
    

    def getTransformInfoInterface()
        return @transformInfoInterface
    end
    

    def setTransformInfoInterface(transformInfoInterface)
        @transformInfoInterface = transformInfoInterface
    end
    

    def getTransformDocumentInterface()
        return @transformDocumentInterface
    end
    

    def setTransformDocumentInterface(transformDocumentInterface)
        @transformDocumentInterface = transformDocumentInterface
    end
    

    def toXmlDoc()
        return @transformDocumentInterface.getDoc()
    end
    

    # throws Exception
    def getDoc()
        document = self.getTransformInfoInterface().getDataDocument()
        dataNode = self.getTransformDocumentInterface().getDoc().importNode(document.getFirstChild(), true)
        if dataNode != nil
            self.getTransformDocumentInterface().getBaseNode().appendChild(dataNode)
        end
        return self.getTransformDocumentInterface().getDoc()
    end
    

    # throws Exception
    def view()
        begin
            success = XmlDocumentHelper.toString(self.getDoc())
            result = TransformInfoCustomUriTransformer.new(@abeClientInformation, self.getTransformInfoInterface()).translate(success)
            return result
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

require "org/allbinary/data/tree/dom/document/XmlDocumentHelper"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
require "org/allbinary/logic/visual/transform/TransformInfoCustomUriTransformer"
require "org/allbinary/logic/visual/transform/data/TransformDocumentFactory"
require "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

