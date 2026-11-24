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
# package org.allbinary.business.init

require "java/lang/Object"
require "java/lang/JavaClass"
# require "java/sql/Connection"
# require "java/sql/DriverManager"
# require "java/sql/ResultSet"
# require "java/sql/ResultSetMetaData"
# require "java/sql/SQLException"
# require "java/sql/Statement"
# require "java/util/Set"

module ::Org; module Allbinary; module Business; module Init

class InitSql
    attr_accessor :stringUtil, :commonSeps, :sqlTypeStrings, :sqlStrings, :stdUtil, :INSERT, :UPDATE, :databaseConnectionInfoInterface, :userid, :password, :tableName, :conn, :useridAndPassword, :SUCCESS_SQL_STATEMENT, :FAILED_SQL_STATEMENT, :INIT_SQL, :commonStrings, :EQUAL_QUOTE, :METHOD_GET_ROW, :METHOD_UPDATE_WHERE, :ROW_VALUE_LABEL, :NO_RESULTS_IN_RESULT_SET, :INSERT_END

    def jfields_org_allbinary_business_init_InitSql
        @stringUtil = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance()
        @commonSeps = ::Org::Allbinary::StringPackage::CommonSeps.getInstance()
        @sqlTypeStrings = ::Org::Allbinary::Logic::Communication::Sql::SqlTypeStrings.getInstance()
        @sqlStrings = ::Org::Allbinary::Logic::Communication::Sql::SqlStrings.getInstance()
        @stdUtil = ::Org::Allbinary::Logic::StdUtil.getInstance()
        @INSERT = "insert"
        @UPDATE = "update"
        @databaseConnectionInfoInterface = nil unless instance_variable_defined?(:@databaseConnectionInfoInterface)
        @userid = nil unless instance_variable_defined?(:@userid)
        @password = nil unless instance_variable_defined?(:@password)
        @tableName = nil unless instance_variable_defined?(:@tableName)
        @conn = nil unless instance_variable_defined?(:@conn)
        @useridAndPassword = false unless instance_variable_defined?(:@useridAndPassword)
        @SUCCESS_SQL_STATEMENT = "Success\nSQL Statement: "
        @FAILED_SQL_STATEMENT = "Failed\nSQL Statement: "
        @INIT_SQL = "InitSql"
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @EQUAL_QUOTE = "=\""
        @METHOD_GET_ROW = "getRow()"
        @METHOD_UPDATE_WHERE = "updateWhere()"
        @ROW_VALUE_LABEL = "Row Value: "
        @NO_RESULTS_IN_RESULT_SET = "No Results in ResultSet"
        @INSERT_END = "')"
    end
    

    def initialize(databaseConnectionInfoInterface)
        jfields_org_allbinary_business_init_InitSql
        self.setDatabaseConnectionInfoInterface(databaseConnectionInfoInterface)
    end
    

    def setTable(tableName)
        @tableName = tableName
    end
    

    def setDatabaseConnectionInfoInterface(databaseConnectionInfoInterface)
        @databaseConnectionInfoInterface = databaseConnectionInfoInterface
    end
    

    def createTable(tableData)
        begin
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append("Creating Table: ")
            stringBuffer.append(tableData)
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(stringBuffer.to_s, @INIT_SQL, "createTable()")
            self.executeSQLStatement(tableData)
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "createTable()", e)
            end
            return false
        end
    end
    

    def dropTable()
        sqlStatement = (@sqlStrings.DROP_TABLE).to_s + @tableName
        begin
            self.executeSQLStatement(sqlStatement)
            return true
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "dropTables()", e)
            end
            return false
        end
    end
    

    def getRow(keysAndValues)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT_ALL_FROM)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.WHERE)
        begin
            result = nil
            set = keysAndValues.keySet()
            keyArray = set.toArray()
            size = keyArray.length
            (0...size).each do |i|
                key = keyArray[i]
                value = String.new(keysAndValues.get(key))
                stringBuffer.append(key)
                stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
                stringBuffer.append(self.getValue(value))
                stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
                if i < size - 1
                    stringBuffer.append(@sqlStrings.AND)
                end
            end
            sqlStatement = stringBuffer.to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put((@sqlStrings.SQL_STATEMENT_LABEL).to_s + sqlStatement, @INIT_SQL, @METHOD_GET_ROW)
            end
            rset = self.executeSQLStatement(sqlStatement)
            resultSetMetaData = rset.getMetaData()
            while rset.next_()
                result = @stdUtil.createHashMap()
                columnCount = resultSetMetaData.getColumnCount()
                (1..columnCount).each do |index|
                    columnName = resultSetMetaData.getColumnName(index)
                    field = rset.getString(columnName)
                    result.put(columnName, field)
                end
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@ROW_VALUE_LABEL + result.to_s, @INIT_SQL, @METHOD_GET_ROW)
                end
                return result
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@NO_RESULTS_IN_RESULT_SET, @INIT_SQL, @METHOD_GET_ROW)
            end
            return nil
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@FAILED_SQL_STATEMENT + (stringBuffer).to_s, @INIT_SQL, @METHOD_GET_ROW, e)
            end
            return nil
        end
    end
    

    def updateWhere(key, value, updatedKeyValuePairs)
        java_monitor.synchronize do
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.UPDATE)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.SET)
        begin
            columnArray = updatedKeyValuePairs.keySet().toArray()
            size = columnArray.length
            (0...size).each do |i|
                columnName = columnArray[i].to_s
                stringBuffer.append(@commonSeps.SPACE)
                stringBuffer.append(columnName)
                stringBuffer.append(@EQUAL_QUOTE)
                columnValue = updatedKeyValuePairs.get(columnName)
                if columnValue == nil
                    columnValue = @stringUtil.EMPTY_STRING
                else
                end
                stringBuffer.append(self.getValue(columnValue))
                stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
                if i < size - 1
                    stringBuffer.append(@commonSeps.COMMA)
                end
            end
            stringBuffer.append(@sqlStrings.WHERE)
            stringBuffer.append(key)
            stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
            stringBuffer.append(self.getValue(value))
            stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
            sqlStatement = stringBuffer.to_s
            self.executeSQLStatement(sqlStatement)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@SUCCESS_SQL_STATEMENT + sqlStatement, @INIT_SQL, @METHOD_UPDATE_WHERE)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@FAILED_SQL_STATEMENT + (stringBuffer).to_s, @INIT_SQL, @METHOD_UPDATE_WHERE, e)
            end
        end
        end
    end
    

    def insert(values)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.INSERT_INTO)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.VALUES)
        begin
            size = values.size()
            (0...size - 1).each do |i|
                value = self.getValue(values.get(i))
                stringBuffer.append(value)
                stringBuffer.append(@sqlStrings.SINGLE_QUOTE_COMMA_SEP)
            end
            value = self.getValue(values.get(values.size() - 1))
            stringBuffer.append(value)
            stringBuffer.append(@INSERT_END)
            sqlStatement = stringBuffer.to_s
            self.executeSQLStatement(sqlStatement)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@SUCCESS_SQL_STATEMENT + sqlStatement, @INIT_SQL, @INSERT)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@FAILED_SQL_STATEMENT + stringBuffer.to_s, @INIT_SQL, @INSERT, e)
            end
        end
    end
    

    def getValue(value)
        java_monitor.synchronize do
        if ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance().isEmpty(value)
            return @stringUtil.EMPTY_STRING
        else
            return value
        end
        end
    end
    

    # throws Exception, SQLException
    def executeSQLStatement(statement)
        begin
            if @conn == nil
                self.initialize()
            end
            stmt = @conn.createStatement()
            stmt.execute(statement)
            rset = stmt.getResultSet()
            stmt.close()
            return rset
        rescue SQLException => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "executeSQLStatement()", e)
            end
            raise e
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "executeSQLStatement()", e)
            end
            raise e
        end
    end
    

    # throws SQLException
    def createConnection()
        begin
            if @useridAndPassword == true
                @conn = DriverManager.getConnection(@databaseConnectionInfoInterface.getUrl(), @userid, @password)
            else
                @conn = DriverManager.getConnection(@databaseConnectionInfoInterface.getUrl())
            end
        rescue SQLException => se
            ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "createConnection()", se)
            raise se
        end
    end
    

    # throws Exception
    def initialize()
        begin
            begin
                jdbcDriver = @databaseConnectionInfoInterface.getJdbcDriver()
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append("Loading DbConnnectionInfo: ").append(@databaseConnectionInfoInterface.class.java_name).append(" Driver: ").append(jdbcDriver).to_s, @INIT_SQL, "initialize()")
                Class.forName(jdbcDriver).newInstance()
            rescue StandardError => e
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE("LoadDriver Failed: " + (@databaseConnectionInfoInterface.getJdbcDriver()).to_s, @INIT_SQL, "initialize()", e)
                end
                raise e
            end
            if @userid == nil && @password == nil
                @useridAndPassword = true
            end
            self.createConnection()
        rescue StandardError => se
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "initialize()", se)
            end
            raise se
        end
    end
    

    def getDatabaseConnectionInfoInterface()
        return @databaseConnectionInfoInterface
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DatabaseConnectionInfoInterface, "org/allbinary/business/init/db/DatabaseConnectionInfoInterface" unless const_defined?(:DatabaseConnectionInfoInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :SqlStrings, "org/allbinary/logic/communication/sql/SqlStrings" unless const_defined?(:SqlStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Sql; autoload :SqlTypeStrings, "org/allbinary/logic/communication/sql/SqlTypeStrings" unless const_defined?(:SqlTypeStrings, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end

