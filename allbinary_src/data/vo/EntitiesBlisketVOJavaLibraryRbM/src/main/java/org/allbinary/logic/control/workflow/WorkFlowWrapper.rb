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
require "org/allbinary/logic/control/workflow/WorkFlowInterface"

class WorkFlowWrapper
    include WorkFlowInterface
    attr_accessor :logUtil, :commonStrings, :anyType

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @anyType = nil
    end
    

    def initialize(anyType)
        initialize_fields
        @anyType = anyType
    end
    

    def getWorkFlowObject()
        return @anyType
    end
    

    # throws Exception
    def getName()
        begin
            helperClass = @anyType.class
            method = helperClass.getMethod("getName", nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            error = "Reflection Exception"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getName()", e)
            end
            raise StandardError.new(error)
        end
    end
    

    # throws Exception
    def getStoreName()
        begin
            helperClass = @anyType.class
            method = helperClass.getMethod("getStoreName", nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            error = "Reflection Exception"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "getStoreName()", e)
            end
            raise StandardError.new(error)
        end
    end
    

    # throws Exception
    def process()
        begin
            helperClass = @anyType.class
            method = helperClass.getMethod(@commonStrings.PROCESS, nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            error = "Reflection Exception"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, @commonStrings.PROCESS, e)
            end
            raise StandardError.new(error)
        end
    end
end

require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/string/CommonStrings"

