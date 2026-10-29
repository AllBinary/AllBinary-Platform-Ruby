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
# package org.allbinary.logic.control.workflow

# require "java/lang/reflect/Method"
require "org/allbinary/logic/control/workflow/WorkFlowWrapper"

class StoreWorkFlowWrapper < WorkFlowWrapper
    attr_accessor :logUtil

    def initialize_fields
        @logUtil = LogUtil.getInstance()
    end
    

    def initialize(anyType)
        super(anyType)
        initialize_fields
    end
    

    # throws Exception
    def getStoreName()
        begin
            helperClass = self.getWorkFlowObject().class
            method = helperClass.getMethod("getStoreName", nil)
            result = method.invoke(self.getWorkFlowObject(), nil)
            return result
        rescue StandardError => e
            error = "Reflection Exception"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, "getStoreName()", e)
            end
            raise StandardError.new(error)
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

