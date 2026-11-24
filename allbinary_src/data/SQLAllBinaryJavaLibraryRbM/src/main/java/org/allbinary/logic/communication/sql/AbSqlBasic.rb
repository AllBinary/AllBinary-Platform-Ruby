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

# require "java/sql/Connection"
# require "java/sql/ResultSet"
# require "java/sql/SQLException"
# require "java/sql/Statement"

module ::Org; module Allbinary; module Logic; module Communication; module Sql

class AbSqlBasic
    attr_accessor :logUtil, :sqlConnectionPool, :databaseConnectionInfoInterface, :connectAttemptCounter, :conn, :stringUtil, :commonStrings, :commonSeps, :stdUtil, :sqlTypeStrings, :sqlStrings, :INSERT, :UPDATE, :FAILED_SQL_STATEMENT, :SUCCESS_SQL_STATEMENT, :METHOD_EXECUTED_SQL_STATEMENT, :METHOD_CREATE, :DATABASE_CREATED_LABEL, :DATABASE_CREATION_FAILED_LABEL, :SQL_CONNECTION_FAILED, :SQL_CONNECTION_RETRYING, :SQL_CONNECTION_RETRY, :METHOD_CREATE_CONNECTION, :METHOD_INITIALIZE, :LOAD_JDBC_DRIVER_FAILED_LABEL

    def jfields_org_allbinary_logic_communication_sql_AbSqlBasic
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @sqlConnectionPool = ::Org::Allbinary::Logic::Communication::Sql::Connection::Pool::SqlConnectionPool.getInstance()
        @databaseConnectionInfoInterface = nil unless instance_variable_defined?(:@databaseConnectionInfoInterface)
        @connectAttemptCounter = nil unless instance_variable_defined?(:@connectAttemptCounter)
        @conn = nil unless instance_variable_defined?(:@conn)
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @stdUtil = ::Org::Allbinary::Logic::StdUtil.getInstance()
        @sqlTypeStrings = SqlTypeStrings.getInstance()
        @sqlStrings = SqlStrings.getInstance()
        @INSERT = "insert"
        @UPDATE = "update"
        @FAILED_SQL_STATEMENT = "Failed\nSQL Statement: "
        @SUCCESS_SQL_STATEMENT = "Success\nSQL Statement: "
        @METHOD_EXECUTED_SQL_STATEMENT = "executedSQLStatement"
        @METHOD_CREATE = "create"
        @DATABASE_CREATED_LABEL = "Database Created: "
        @DATABASE_CREATION_FAILED_LABEL = "Database Creation Failed: "
        @SQL_CONNECTION_FAILED = "SQL Connection Failed"
        @SQL_CONNECTION_RETRYING = "SQL Connection Retrying"
        @SQL_CONNECTION_RETRY = "SQL Connection Retry"
        @METHOD_CREATE_CONNECTION = "createConnection()"
        @METHOD_INITIALIZE = "initialize"
        @LOAD_JDBC_DRIVER_FAILED_LABEL = "Load JDBC Driver Failed: "
    end
    

    def initialize(databaseConnectionInfoInterface)
        jfields_org_allbinary_logic_communication_sql_AbSqlBasic
        @databaseConnectionInfoInterface = databaseConnectionInfoInterface
        @connectAttemptCounter = 0
        @conn = nil
    end
    

    # throws SQLException
    def executeSQLStatement(statement)
        begin
            self.initialize()
            stmt = @conn.createStatement()
            stmt.execute(statement)
            rset = stmt.getResultSet()
            stmt.close()
            tempConnection = @conn
            @conn = nil
            @sqlConnectionPool.add(self.getDatabaseConnectionInfoInterface().getUrl(), tempConnection)
            return rset
        rescue SQLException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + statement, self, @METHOD_EXECUTED_SQL_STATEMENT, e)
            end
            @conn.close()
            @conn = nil
            raise e
        end
    end
    

    def create(databaseName)
        begin
            self.executeSQLStatement((@sqlStrings.CREATE_DATABASE).to_s + databaseName)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@DATABASE_CREATED_LABEL + databaseName, self, @METHOD_CREATE)
            end
            return databaseName + (@sqlStrings.CREATE_RETURN).to_s
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@DATABASE_CREATION_FAILED_LABEL + databaseName, self, @METHOD_CREATE, e)
            end
            return @DATABASE_CREATION_FAILED_LABEL + databaseName
        end
    end
    

    def createConnection()
        begin
            @conn = @sqlConnectionPool.get(self.getDatabaseConnectionInfoInterface().getUrl())
        rescue SQLException => se
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@SQL_CONNECTION_RETRYING, self, @METHOD_CREATE_CONNECTION, se)
            end
            begin
                ::Java::Lang::JavaThread.currentThread().sleep(2000)
                if @connectAttemptCounter < 10
                    @connectAttemptCounter += 1
                    self.initialize()
                end
            rescue StandardError => e
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                    @logUtil.put(@SQL_CONNECTION_RETRY + se.message, self, @METHOD_CREATE_CONNECTION, e)
                end
            end
        end
    end
    

    def initialize()
        begin
            begin
                begin
                    loader = ::Java::Lang::JavaThread.currentThread().getContextClassLoader()
                    jdbcDriverClass = loader.loadClass(self.getDatabaseConnectionInfoInterface().getJdbcDriver())
                    jdbcDriverClass.newInstance()
                rescue StandardError => e
                    if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                        @logUtil.put(@LOAD_JDBC_DRIVER_FAILED_LABEL + (self.getDatabaseConnectionInfoInterface().getJdbcDriver()).to_s, self, @METHOD_INITIALIZE, e)
                    end
                end
            end
            self.createConnection()
        rescue StandardError => se
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@SQL_CONNECTION_FAILED, self, @METHOD_INITIALIZE, se)
            end
        end
    end
    

    def getDatabaseConnectionInfoInterface()
        return @databaseConnectionInfoInterface
    end
    

    def setDatabaseConnectionInfoInterface(databaseConnectionInfoInterface)
        @databaseConnectionInfoInterface = databaseConnectionInfoInterface
    end
end

module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DatabaseConnectionInfoInterface, "org/allbinary/business/init/db/DatabaseConnectionInfoInterface" unless const_defined?(:DatabaseConnectionInfoInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; module Connection; module Pool; autoload :SqlConnectionPool, "org/allbinary/logic/communication/sql/connection/pool/SqlConnectionPool" unless const_defined?(:SqlConnectionPool, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :SqlStrings, "org/allbinary/logic/communication/sql/SqlStrings" unless const_defined?(:SqlStrings, false)
autoload :SqlTypeStrings, "org/allbinary/logic/communication/sql/SqlTypeStrings" unless const_defined?(:SqlTypeStrings, false)
require "java/lang/Thread"
require "java/lang/ClassLoader"

end; end; end; end; end

