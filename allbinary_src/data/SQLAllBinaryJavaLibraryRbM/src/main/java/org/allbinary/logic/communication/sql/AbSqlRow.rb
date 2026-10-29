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
# require "java/sql/ResultSet"
# require "java/sql/ResultSetMetaData"
# require "java/util/Set"
require "org/allbinary/logic/communication/sql/AbSqlColumn"

class AbSqlRow < AbSqlColumn
    attr_accessor :logUtil, :EQUAL_QUOTE, :ESCAPE_QUOTES, :GET_ROW, :METHOD_GET_ROW, :METHOD_GET_ROWS, :METHOD_GET_ALL_ROWS, :METHOD_UPDATE_WHERE, :METHOD_GET_ROWS_WHERE_BETWEEN, :METHOD_DELETE_WHERE, :ROW_VALUE_LABEL, :ROW_VALUES_LABEL, :NO_RESULTS_IN_RESULT_SET, :COLUMN_NAME_LABEL, :INSERT_END

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @EQUAL_QUOTE = "=\""
        @ESCAPE_QUOTES = "\\\""
        @GET_ROW = "Row Value: "
        @METHOD_GET_ROW = "getRow()"
        @METHOD_GET_ROWS = "getRows()"
        @METHOD_GET_ALL_ROWS = "getAllRows()"
        @METHOD_UPDATE_WHERE = "updateWhere()"
        @METHOD_GET_ROWS_WHERE_BETWEEN = "getRowsWhereBetween()"
        @METHOD_DELETE_WHERE = "deleteWhere()"
        @ROW_VALUE_LABEL = "Row Value: "
        @ROW_VALUES_LABEL = "Row Values: "
        @NO_RESULTS_IN_RESULT_SET = "No Results in ResultSet"
        @COLUMN_NAME_LABEL = "columnName: "
        @INSERT_END = "')"
    end
    

    def initialize(databaseConnectionInfoInterface)
        super(databaseConnectionInfoInterface)
        initialize_fields
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
    

    def updateWhere(key, value, updatedKeyValuePairs)
        java_monitor.synchronize do
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.UPDATE)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.SET)
        begin
            keyArray = updatedKeyValuePairs.keySet().toArray()
            size = keyArray.length
            (0...size).each do |i|
                columnName = keyArray[i].to_s
                stringBuffer.append(@commonSeps.SPACE)
                stringBuffer.append(columnName)
                stringBuffer.append(@EQUAL_QUOTE)
                columnValue = updatedKeyValuePairs.get(columnName)
                if columnValue == nil
                    columnValue = @stringUtil.EMPTY_STRING
                else
                    columnValue = Replace.new(@sqlStrings.CLOSE_QUOTE, @ESCAPE_QUOTES).all(columnValue)
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
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_UPDATE_WHERE)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_UPDATE_WHERE, e)
            end
        end
        end
    end
    

    # throws Exception
    # Java overloaded method: Ruby keeps the last definition
    def updateWhere(whereKeyValuePairs, updatedKeyValuePairs)
        java_monitor.synchronize do
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.UPDATE)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.SET)
        begin
            keyArray = updatedKeyValuePairs.keySet().toArray()
            size = keyArray.length
            (0...size).each do |i|
                columnName = keyArray[i].to_s
                stringBuffer.append(@commonSeps.SPACE)
                stringBuffer.append(columnName)
                stringBuffer.append(@EQUAL_QUOTE)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@COLUMN_NAME_LABEL + columnName, self, @METHOD_UPDATE_WHERE)
                end
                columnValue = updatedKeyValuePairs.get(columnName)
                if columnValue == nil
                    columnValue = @stringUtil.EMPTY_STRING
                else
                    columnValue = Replace.new(@sqlStrings.CLOSE_QUOTE, @ESCAPE_QUOTES).all(columnValue)
                end
                stringBuffer.append(self.getValue(columnValue))
                stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
                if i < size - 1
                    stringBuffer.append(@commonSeps.COMMA)
                end
            end
            stringBuffer.append(@sqlStrings.WHERE)
            set = whereKeyValuePairs.keySet()
            keyArray2 = set.toArray()
            size2 = keyArray2.length
            (0...size2).each do |i|
                key = keyArray2[i]
                value = whereKeyValuePairs.get(key)
                begin
                    stringBuffer.append(key)
                    stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
                    stringBuffer.append(self.getValue(value))
                    stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
                    if i < size2 - 1
                        stringBuffer.append(@sqlStrings.AND)
                    end
                end
            end
            sqlStatement = stringBuffer.to_s
            self.executeSQLStatement(sqlStatement)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_UPDATE_WHERE)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_UPDATE_WHERE, e)
            end
            raise e
        end
        end
    end
    

    def deleteWhere(key, value)
        java_monitor.synchronize do
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.DELETE)
        stringBuffer.append(@sqlStrings.FROM)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.WHERE)
        stringBuffer.append(key)
        stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
        stringBuffer.append(value)
        stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
        begin
            sqlStatement = stringBuffer.to_s
            self.executeSQLStatement(sqlStatement)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_DELETE_WHERE)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + stringBuffer.to_s, self, @METHOD_DELETE_WHERE, e)
            end
        end
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def deleteWhere(keysAndValues)
        java_monitor.synchronize do
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.DELETE)
        stringBuffer.append(@sqlStrings.FROM)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.WHERE)
        begin
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
            self.executeSQLStatement(sqlStatement)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_DELETE_WHERE)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + stringBuffer.to_s, self, @METHOD_DELETE_WHERE, e)
            end
        end
        end
    end
    

    def insert(values)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.INSERT_INTO)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.VALUES)
        begin
            (0...values.size() - 1).each do |i|
                value = self.getValue(values.get(i))
                value = Replace.new(@sqlStrings.ESCAPE, @sqlStrings.DOUBLE_ESCAPE).all(value)
                stringBuffer.append(value)
                stringBuffer.append(@sqlStrings.SINGLE_QUOTE_COMMA_SEP)
            end
            value = self.getValue(values.get(values.size() - 1))
            value = Replace.new(@sqlStrings.ESCAPE, @sqlStrings.DOUBLE_ESCAPE).all(value)
            stringBuffer.append(value)
            stringBuffer.append(@INSERT_END)
            sqlStatement = stringBuffer.to_s
            self.executeSQLStatement(sqlStatement)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @INSERT)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + stringBuffer.to_s, self, INSERT, e)
            end
        end
    end
    

    def getRow(keysAndValues)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT_ALL_FROM)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.WHERE)
        begin
            result = nil
            set = keysAndValues.keySet()
            keyArray = set.toArray()
            size = keyArray.length
            (0...size).each do |index|
                key = keyArray[index]
                value = String.new(keysAndValues.get(key))
                stringBuffer.append(key)
                stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
                stringBuffer.append(self.getValue(value))
                stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
                if index < size - 1
                    stringBuffer.append(@sqlStrings.AND)
                end
            end
            sqlStatement = stringBuffer.to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@sqlStrings.SQL_STATEMENT_LABEL).to_s + sqlStatement, self, @METHOD_GET_ROW)
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
                    @logUtil.putF(@ROW_VALUE_LABEL + result.to_s, self, @METHOD_GET_ROW)
                end
                return result
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.putF(@NO_RESULTS_IN_RESULT_SET, self, @METHOD_GET_ROW)
            end
            return nil
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_GET_ROW, e)
            end
            return nil
        end
    end
    

    def getRows(keysAndValues)
        return self.getRows(keysAndValues, StringUtil.getInstance().EMPTY_STRING)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getRows(keysAndValues, more)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT_ALL_FROM)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.WHERE)
        begin
            rows = BasicArrayListD.new()
            set = keysAndValues.keySet()
            keyArray = set.toArray()
            size = keyArray.length
            (0...size).each do |index|
                key = keyArray[index]
                value = String.new(keysAndValues.get(key))
                stringBuffer.append(key)
                stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
                stringBuffer.append(self.getValue(value))
                stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
                if index < size - 1
                    stringBuffer.append(@sqlStrings.AND)
                end
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@sqlStrings.SQL_STATEMENT_LABEL + stringBuffer, self, @METHOD_GET_ROWS)
            end
            stringBuffer.append(more)
            sqlStatement = stringBuffer.to_s
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
                resultAsString = result.to_s
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@GET_ROW + resultAsString, self, @METHOD_GET_ROWS)
                end
                rows.add(result)
            end
            return rows
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_GET_ROWS, e)
            end
            return nil
        end
    end
    

    def getAllRows()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT_ALL_FROM)
        stringBuffer.append(self.getTableName())
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@sqlStrings.SQL_STATEMENT_LABEL + stringBuffer, self, @METHOD_GET_ALL_ROWS)
            end
            rows = BasicArrayListD.new()
            sqlStatement = stringBuffer.to_s
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
                    @logUtil.putF(@ROW_VALUES_LABEL + result.to_s, self, @METHOD_GET_ALL_ROWS)
                end
                rows.add(result)
            end
            return rows
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_GET_ALL_ROWS, e)
            end
            return nil
        end
    end
    

    def getRowsWhereBetween(whereKeyValuePairs, betweenColumn, smallest, largest)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT_ALL_FROM)
        stringBuffer.append(self.getTableName())
        begin
            rows = BasicArrayListD.new()
            stringBuffer.append(@sqlStrings.WHERE)
            set = whereKeyValuePairs.keySet()
            key = nil
            value = nil
            keyArray = set.toArray()
            size = keyArray.length
            (0...size).each do |index|
                key = keyArray[index]
                value = whereKeyValuePairs.get(key)
                stringBuffer.append(key)
                stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
                stringBuffer.append(self.getValue(value))
                stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
                stringBuffer.append(@sqlStrings.AND)
            end
            stringBuffer.append(betweenColumn)
            stringBuffer.append(@sqlStrings.MORE_THAN_QUOTE)
            stringBuffer.append(smallest)
            stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
            stringBuffer.append(@sqlStrings.AND)
            stringBuffer.append(betweenColumn)
            stringBuffer.append(@sqlStrings.LESS_THAN_QUOTE)
            stringBuffer.append(largest)
            stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
            sqlStatement = stringBuffer.to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@sqlStrings.SQL_STATEMENT_LABEL).to_s + sqlStatement, self, @METHOD_GET_ROWS_WHERE_BETWEEN)
            end
            rset = self.executeSQLStatement(sqlStatement)
            resultSetMetaData = rset.getMetaData()
            result = nil
            columnNames = nil
            columnCount = 0
            columnName = nil
            field = nil
            while rset.next_()
                result = @stdUtil.createHashMap()
                columnNames = BasicArrayListD.new()
                columnCount = resultSetMetaData.getColumnCount()
                (1..columnCount).each do |index|
                    columnName = resultSetMetaData.getColumnName(index)
                    field = rset.getString(columnName)
                    result.put(columnName, field)
                end
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@ROW_VALUE_LABEL + result.to_s, self, @METHOD_GET_ROWS_WHERE_BETWEEN)
                end
                rows.add(result)
            end
            return rows
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_GET_ROWS_WHERE_BETWEEN, e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getRowsWhereBetween(betweenColumn, smallest, largest)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT_ALL_FROM)
        stringBuffer.append(self.getTableName())
        begin
            rows = BasicArrayListD.new()
            stringBuffer.append(@sqlStrings.WHERE)
            stringBuffer.append(betweenColumn)
            stringBuffer.append(@sqlStrings.MORE_THAN_QUOTE)
            stringBuffer.append(smallest)
            stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
            stringBuffer.append(@sqlStrings.AND)
            stringBuffer.append(betweenColumn)
            stringBuffer.append(@sqlStrings.LESS_THAN_QUOTE)
            stringBuffer.append(largest)
            stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
            sqlStatement = stringBuffer.to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@sqlStrings.SQL_STATEMENT_LABEL).to_s + sqlStatement, self, @METHOD_GET_ROWS_WHERE_BETWEEN)
            end
            rset = self.executeSQLStatement(sqlStatement)
            resultSetMetaData = rset.getMetaData()
            columnName = nil
            field = nil
            result = nil
            columnNames = nil
            columnCount = 0
            while rset.next_()
                result = @stdUtil.createHashMap()
                columnNames = BasicArrayListD.new()
                columnCount = resultSetMetaData.getColumnCount()
                (1..columnCount).each do |index|
                    columnName = resultSetMetaData.getColumnName(index)
                    field = rset.getString(columnName)
                    result.put(columnName, field)
                end
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@ROW_VALUE_LABEL + result.to_s, self, @METHOD_GET_ROWS_WHERE_BETWEEN)
                end
                rows.add(result)
            end
            return rows
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_GET_ROWS_WHERE_BETWEEN, e)
            end
            return nil
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/init/db/DbConnectionInfo"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/string/regex/replace/Replace"

