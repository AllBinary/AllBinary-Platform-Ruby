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
# package workflows.template.data

# require "javax/servlet/jsp/PageContext"
# require "javax/servlet/jsp/tagext/TagSupport"
require "org/allbinary/logic/control/workflow/WorkFlowInterface"

class BasicWorkFlow
    include WorkFlowInterface
    attr_accessor :logUtil, :commonStrings, :abeClientInformation, :validationDomNodeInterface, :propertiesHashMap, :pageContext

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @validationDomNodeInterface = nil
        @propertiesHashMap = nil
        @pageContext = nil
    end
    

    def initialize(propertiesHashMap, pageContext)
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().WORKFLOW)
            @logUtil.putF("Properties: " + propertiesHashMap.to_s, self, "BasicWorkFlow()")
        end
        @propertiesHashMap = propertiesHashMap
        @pageContext = pageContext
        @validationDomNodeInterface = TransformFactory.getInstance().getInstance(@abeClientInformation, propertiesHashMap, pageContext)
    end
    

    # throws Exception
    def getName()
        return self.getPropertiesHashMap().get(WorkFlowData.getInstance().NAME)
    end
    

    def getPropertiesHashMap()
        return @propertiesHashMap
    end
    

    def getPageContext()
        return @pageContext
    end
    

    # throws Exception
    def process()
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().WORKFLOW)
            @logUtil.putF(@commonStrings.START, self, @commonStrings.PROCESS)
        end
        if @validationDomNodeInterface.isValid()
            @pageContext.getOut().print(@validationDomNodeInterface.view())
            return (TagSupport::EVAL_BODY_INCLUDE).to_s
        else
            @pageContext.getOut().print(@validationDomNodeInterface.validationInfo())
            return (TagSupport::SKIP_BODY).to_s
        end
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil"
autoload :ValidationComponentInterface, "org/allbinary/logic/control/validate/ValidationComponentInterface"
autoload :WorkFlowData, "org/allbinary/logic/control/workflow/WorkFlowData"
autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
autoload :ServiceClientInformationInterfaceFactory, "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
autoload :TransformFactory, "org/allbinary/logic/visual/transform/TransformFactory"
autoload :CommonStrings, "org/allbinary/string/CommonStrings"

