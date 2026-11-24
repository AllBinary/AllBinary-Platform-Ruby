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
require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBasic"

module ::Org; module Allbinary; module Logic; module Communication; module Sql

class AbSqlTable < AbSqlBasic
    attr_accessor :logUtil, :tableName, :METHOD_CREATED_TABLE, :METHOD_DROP_TABLE, :TABLE_CREATION_SUCCESS, :DROPPED_SUCCESS

    def jfields_org_allbinary_logic_communication_sql_AbSqlTable
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = nil unless instance_variable_defined?(:@tableName)
        @METHOD_CREATED_TABLE = "createTable()"
        @METHOD_DROP_TABLE = "dropTable()"
        @TABLE_CREATION_SUCCESS = "Table Creation Successful: "
        @DROPPED_SUCCESS = " Dropped Successfully"
    end
    

    def initialize(databaseConnectionInfoInterface)
        super(databaseConnectionInfoInterface)
        jfields_org_allbinary_logic_communication_sql_AbSqlTable
    end
    

    def setTableName(tableName)
        @tableName = tableName
    end
    java_overload :setTableName, 1
    

    def getTableName()
        return @tableName
    end
    java_overload :getTableName, 0
    

    def createTable(data)
        java_monitor.synchronize do
        begin
            self.executeSQLStatement(data)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@TABLE_CREATION_SUCCESS + @tableName + " with statement: " + data, self, @METHOD_CREATED_TABLE)
            end
            return @tableName + (@sqlStrings.CREATE_RETURN).to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put("Table Creation Failed: " + @tableName + " with statement: " + data, self, @METHOD_CREATED_TABLE, e)
            end
            return "Failed to Create " + @tableName + " table."
        end
        end
    end
    java_overload :createTable, 1
    

    def dropTable()
        java_monitor.synchronize do
        sqlStatement = (@sqlStrings.DROP_TABLE).to_s + @tableName
        begin
            self.executeSQLStatement(sqlStatement)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_DROP_TABLE)
            end
            return @tableName + @DROPPED_SUCCESS
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_DROP_TABLE, e)
            end
            return "Failed to Drop " + @tableName + " table."
        end
        end
    end
    java_overload :dropTable, 0
end

module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

