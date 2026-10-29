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
require "admin/taghelpers/TagHelper"

class StoreTagWorkFlowHelper < TagHelper
    attr_accessor :logUtil, :abeClientInformation, :storeWorkFlowInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @storeWorkFlowInterface = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
            @logUtil.putF("Properties: " + hashMap.to_s, self, "StoreTagWorkFlowHelper()")
        end
        @storeWorkFlowInterface = StoreTagWorkFlowFactory.getInstance().getInstance(@abeClientInformation, hashMap, pageContext)
    end
    

    # throws Exception
    def process()
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().TAGHELPER)
                @logUtil.putF("Process", self, @commonStrings.PROCESS)
            end
            return @storeWorkFlowInterface.process()
        rescue StandardError => e
            error = "Failed to process workflow: "
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "view()", e)
            end
            raise e
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/workflow/StoreTagWorkFlowFactory"
require "org/allbinary/logic/control/workflow/StoreWorkFlowInterface"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"

