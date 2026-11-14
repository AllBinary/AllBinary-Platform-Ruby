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
# package views.admin.workflow

require "org/allbinary/logic/control/validate/ValidationComponentInterface"
require "views/admin/workflow/WorkFlowView"

class AddValidationView < WorkFlowView
    include ValidationComponentInterface
    attr_accessor :logUtil, :abeClientInformation

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        @workFlowInterface = NewWorkFlowFactory.getInstance().getInstance(@abeClientInformation, self.getPropertiesHashMap(), self.getPageContext())
    end
    

    def isValid()
        begin
            return true
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
            if WorkFlowEntityFactory.getInstance().create2().get(@workFlowInterface.getName(), self.getTransformInfoInterface().getStoreName()) != nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("Workflow already exist", self, "validationInfo()")
                end
                stringBuffer.append("The WorkFlow name you selected is already in use.<br/>  Please select another Name.<br />")
            end
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

autoload :WorkFlowEntityFactory, "org/allbinary/data/tables/workflow/WorkFlowEntityFactory"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :NewWorkFlowFactory, "org/allbinary/logic/control/workflow/NewWorkFlowFactory"
autoload :StringMaker, "org/allbinary/logic/string/StringMaker"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
autoload :TransformInfoInterface, "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
autoload :Document, "org/w3c/dom/Document"
autoload :Node, "org/w3c/dom/Node"

