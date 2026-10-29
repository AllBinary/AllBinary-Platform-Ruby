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
# package taghelpers

# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/visual/transform/TransformInterface"

class ViewHelper
    include TransformInterface
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :componentInterface, :NO_TYPE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @componentInterface = nil
        @NO_TYPE = 0
    end
    

    def initialize(hashMap, pageContext)
        initialize_fields
        @componentInterface = TransformFactory.getInstance().getInstance(@abeClientInformation, hashMap, pageContext)
    end
    

    def getTypeId()
        return @NO_TYPE
    end
    

    # throws Exception
    def view()
        begin
            return @componentInterface.view()
        rescue StandardError => e
            error = "Failed to View: "
            if @componentInterface != nil
                error += (@componentInterface.class.name).to_s
            else
                error += ("Unknown").to_s
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    

    # throws Exception
    def toXmlDoc()
        begin
            raise StandardError.new("Hmm: " + (@componentInterface.getTransformDocumentInterface().getDoc()).to_s)
        rescue StandardError => e
            error = "Failed to View: "
            if @componentInterface != nil
                error += (@componentInterface.class.name).to_s
            else
                error += ("Unknown").to_s
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
    

    def getViewObject()
        return @componentInterface
    end
    

    # throws Exception
    def getTransformInfoInterface()
        return @componentInterface.getTransformInfoInterface()
    end
    

    def getTransformDocumentInterface()
        return nil
    end
    

    def setTransformDocumentInterface(viewDocumentInterface)
        return
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
require "org/allbinary/logic/visual/transform/TransformFactory"
require "org/allbinary/logic/visual/transform/data/TransformDocumentInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/string/CommonStrings"
require "org/w3c/dom/Document"

