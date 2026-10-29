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
# require "java/sql/Connection"
# require "java/sql/DriverManager"
# require "java/sql/ResultSet"
# require "java/sql/ResultSetMetaData"
# require "java/sql/SQLException"
# require "java/sql/Statement"
# require "java/util/Set"

class InitSql
    attr_accessor :stringUtil, :commonSeps, :sqlTypeStrings, :sqlStrings, :stdUtil, :INSERT, :UPDATE, :databaseConnectionInfoInterface, :userid, :password, :tableName, :conn, :useridAndPassword, :SUCCESS_SQL_STATEMENT, :FAILED_SQL_STATEMENT, :INIT_SQL, :commonStrings, :EQUAL_QUOTE, :METHOD_GET_ROW, :METHOD_UPDATE_WHERE, :ROW_VALUE_LABEL, :NO_RESULTS_IN_RESULT_SET, :INSERT_END

    def initialize_fields
        @stringUtil = StringUtil.getInstance()
        @commonSeps = CommonSeps.getInstance()
        @sqlTypeStrings = SqlTypeStrings.getInstance()
        @sqlStrings = SqlStrings.getInstance()
        @stdUtil = StdUtil.getInstance()
        @INSERT = "insert"
        @UPDATE = "update"
        @databaseConnectionInfoInterface = nil
        @userid = nil
        @password = nil
        @tableName = nil
        @conn = nil
        @useridAndPassword = false
        @SUCCESS_SQL_STATEMENT = "Success\nSQL Statement: "
        @FAILED_SQL_STATEMENT = "Failed\nSQL Statement: "
        @INIT_SQL = "InitSql"
        @commonStrings = CommonStrings.getInstance()
        @EQUAL_QUOTE = "=\""
        @METHOD_GET_ROW = "getRow()"
        @METHOD_UPDATE_WHERE = "updateWhere()"
        @ROW_VALUE_LABEL = "Row Value: "
        @NO_RESULTS_IN_RESULT_SET = "No Results in ResultSet"
        @INSERT_END = "')"
    end
    

    def initialize(databaseConnectionInfoInterface)
        initialize_fields
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
            stringBuffer = StringMaker.new()
            stringBuffer.append("Creating Table: ")
            stringBuffer.append(tableData)
            PreLogUtil.put(stringBuffer.to_s, @INIT_SQL, "createTable()")
            self.executeSQLStatement(tableData)
            return true
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "createTable()", e)
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
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "dropTables()", e)
            end
            return false
        end
    end
    

    def getRow(keysAndValues)
        stringBuffer = StringMaker.new()
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                PreLogUtil.put((@sqlStrings.SQL_STATEMENT_LABEL).to_s + sqlStatement, @INIT_SQL, @METHOD_GET_ROW)
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
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    PreLogUtil.put(@ROW_VALUE_LABEL + result.to_s, @INIT_SQL, @METHOD_GET_ROW)
                end
                return result
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                PreLogUtil.put(@NO_RESULTS_IN_RESULT_SET, @INIT_SQL, @METHOD_GET_ROW)
            end
            return nil
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                PreLogUtil.putOE(@FAILED_SQL_STATEMENT + (stringBuffer).to_s, @INIT_SQL, @METHOD_GET_ROW, e)
            end
            return nil
        end
    end
    

    def updateWhere(key, value, updatedKeyValuePairs)
        java_monitor.synchronize do
        stringBuffer = StringMaker.new()
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                PreLogUtil.put(@SUCCESS_SQL_STATEMENT + sqlStatement, @INIT_SQL, @METHOD_UPDATE_WHERE)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                PreLogUtil.putOE(@FAILED_SQL_STATEMENT + (stringBuffer).to_s, @INIT_SQL, @METHOD_UPDATE_WHERE, e)
            end
        end
        end
    end
    

    def insert(values)
        stringBuffer = StringMaker.new()
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
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                PreLogUtil.put(@SUCCESS_SQL_STATEMENT + sqlStatement, @INIT_SQL, @INSERT)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                PreLogUtil.putOE(@FAILED_SQL_STATEMENT + stringBuffer.to_s, @INIT_SQL, @INSERT, e)
            end
        end
    end
    

    def getValue(value)
        java_monitor.synchronize do
        if StringValidationUtil.getInstance().isEmpty(value)
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
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "executeSQLStatement()", e)
            end
            raise e
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "executeSQLStatement()", e)
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
            PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "createConnection()", se)
            raise se
        end
    end
    

    # throws Exception
    def initialize()
        begin
            begin
                jdbcDriver = @databaseConnectionInfoInterface.getJdbcDriver()
                PreLogUtil.put(StringMaker.new().append("Loading DbConnnectionInfo: ").append(@databaseConnectionInfoInterface.class.name).append(" Driver: ").append(jdbcDriver).to_s, @INIT_SQL, "initialize()")
                Class.forName(jdbcDriver).newInstance()
            rescue StandardError => e
                if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                    PreLogUtil.putOE("LoadDriver Failed: " + (@databaseConnectionInfoInterface.getJdbcDriver()).to_s, @INIT_SQL, "initialize()", e)
                end
                raise e
            end
            if @userid == nil && @password == nil
                @useridAndPassword = true
            end
            self.createConnection()
        rescue StandardError => se
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                PreLogUtil.putOE(@commonStrings.EXCEPTION, @INIT_SQL, "initialize()", se)
            end
            raise se
        end
    end
    

    def getDatabaseConnectionInfoInterface()
        return @databaseConnectionInfoInterface
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/init/db/DatabaseConnectionInfoInterface"
require "org/allbinary/business/init/db/DbConnectionInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
require "org/allbinary/logic/communication/sql/SqlStrings"
require "org/allbinary/logic/communication/sql/SqlTypeStrings"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonSeps"
require "org/allbinary/string/CommonStrings"

