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
# package admin.taghelpers

# require "javax/servlet/jsp/PageContext"
require "admin/taghelpers/ModifyTable"

class WorkFlowRequestHelper < ModifyTable
    attr_accessor :logUtil, :abeClientInformation, :workFlowInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @workFlowInterface = nil
    end
    

    def initialize(hashMap, pageContext)
        super()
        initialize_fields
        @workFlowInterface = NewWorkFlowFactory.getInstance().getInstance(@abeClientInformation, hashMap, pageContext)
    end
    

    # throws Exception
    def delete()
        begin
            stringUtil = StringUtil.getInstance()
            WorkFlowEntityFactory.getInstance().create2().delete(@workFlowInterface.getName(), stringUtil.EMPTY_STRING)
            success = "Successfully Removed the workflow with " + (WorkFlowData.getInstance().NAME).to_s + "= " + @workFlowInterface.getName() + " from "
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "delete()")
            end
            return success
        rescue StandardError => e
            begin
                error = "Failed to remove workflow with " + (WorkFlowData.getInstance().NAME).to_s + "= " + @workFlowInterface.getName() + " from "
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                    @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e)
                end
                raise StandardError.new(e)
            rescue StandardError => e2
                error = "Failed to get data from workflowinterface to set error string"
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                    @logUtil.put(@commonStrings.EXCEPTION, self, "delete()", e2)
                end
                return error
            end
        end
    end
    

    def insert()
        begin
            success = "New User Successfully added to the Users Table"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "add()")
            end
            return success
        rescue StandardError => e
            error = "Failed to add User"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "add()", e)
            end
            return error
        end
    end
    

    def update()
        begin
            success = "Updated WorkFlow Successfully"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGS)
                @logUtil.putF(success, self, "update()")
            end
            return success
        rescue StandardError => e
            error = "Failed to update WorkFlow"
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLTAGSERROR)
                @logUtil.put(@commonStrings.EXCEPTION, self, "update()", e)
            end
            return error
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/data/tables/workflow/WorkFlowEntityFactory"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/workflow/NewWorkFlowFactory"
require "org/allbinary/logic/control/workflow/WorkFlowData"
require "org/allbinary/logic/control/workflow/WorkFlowInterface"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"

