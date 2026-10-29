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

class EditValidationView < WorkFlowView
    include ValidationComponentInterface
    attr_accessor :logUtil, :workFlowName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @workFlowName = nil
    end
    

    def initialize(transformInfoInterface)
        super(transformInfoInterface)
        initialize_fields
        httpTransformInfoInterface = self.getTransformInfoInterface()
        @workFlowName = httpTransformInfoInterface.getPageContext().getRequest().getParameter(WorkFlowData.getInstance().NAME)
    end
    

    def isValid()
        begin
            if @workFlowName == nil
                return false
            end
            if WorkFlowEntityFactory.getInstance().create2().get(@workFlowName, self.getTransformInfoInterface().getStoreName()) == nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("WorkFlow does not exist.", self, @commonStrings.IS_VALID)
                end
                return false
            end
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEWERROR)
                @logUtil.put("Failed to validate form", self, @commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def validationInfo()
        begin
            stringBuffer = StringMaker.new()
            if @workFlowName == nil
                stringBuffer.append("WorkFlow name is invalid<br />")
            end
            if WorkFlowEntityFactory.getInstance().create2().get(@workFlowName, self.getTransformInfoInterface().getStoreName()) == nil
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().VIEW)
                    @logUtil.putF("WorkFlow does not exist.", self, "validationInfo()")
                end
                stringBuffer.append("WorkFlow does not exist<br />")
            end
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
end

require "org/allbinary/data/tables/workflow/WorkFlowEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/workflow/WorkFlowData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/w3c/dom/Document"
require "org/w3c/dom/Node"

