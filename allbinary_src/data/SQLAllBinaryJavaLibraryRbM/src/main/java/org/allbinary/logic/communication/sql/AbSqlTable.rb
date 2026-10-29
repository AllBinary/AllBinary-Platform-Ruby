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
# package org.allbinary.logic.communication.sql

require "java/lang/Object"
require "org/allbinary/logic/communication/sql/AbSqlBasic"

class AbSqlTable < AbSqlBasic
    attr_accessor :logUtil, :tableName, :METHOD_CREATED_TABLE, :METHOD_DROP_TABLE, :TABLE_CREATION_SUCCESS, :DROPPED_SUCCESS

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = nil
        @METHOD_CREATED_TABLE = "createTable()"
        @METHOD_DROP_TABLE = "dropTable()"
        @TABLE_CREATION_SUCCESS = "Table Creation Successful: "
        @DROPPED_SUCCESS = " Dropped Successfully"
    end
    

    def initialize(databaseConnectionInfoInterface)
        super(databaseConnectionInfoInterface)
        initialize_fields
    end
    

    def setTableName(tableName)
        @tableName = tableName
    end
    

    def getTableName()
        return @tableName
    end
    

    def createTable(data)
        java_monitor.synchronize do
        begin
            self.executeSQLStatement(data)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@TABLE_CREATION_SUCCESS + @tableName + " with statement: " + data, self, @METHOD_CREATED_TABLE)
            end
            return @tableName + (@sqlStrings.CREATE_RETURN).to_s
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put("Table Creation Failed: " + @tableName + " with statement: " + data, self, @METHOD_CREATED_TABLE, e)
            end
            return "Failed to Create " + @tableName + " table."
        end
        end
    end
    

    def dropTable()
        java_monitor.synchronize do
        sqlStatement = (@sqlStrings.DROP_TABLE).to_s + @tableName
        begin
            self.executeSQLStatement(sqlStatement)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_DROP_TABLE)
            end
            return @tableName + @DROPPED_SUCCESS
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_DROP_TABLE, e)
            end
            return "Failed to Drop " + @tableName + " table."
        end
        end
    end
end

require "org/allbinary/business/init/db/DbConnectionInfo"
require "org/allbinary/logic/communication/log/LogUtil"

