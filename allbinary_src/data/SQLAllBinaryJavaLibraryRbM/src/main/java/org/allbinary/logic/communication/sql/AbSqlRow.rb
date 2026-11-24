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
# require "java/sql/ResultSet"
# require "java/sql/ResultSetMetaData"
# require "java/util/Set"
require "org/allbinary/logic/communication/sql/AbSqlColumn"

module ::Org; module Allbinary; module Logic; module Communication; module Sql

class AbSqlRow < AbSqlColumn
    attr_accessor :logUtil, :EQUAL_QUOTE, :ESCAPE_QUOTES, :GET_ROW, :METHOD_GET_ROW, :METHOD_GET_ROWS, :METHOD_GET_ALL_ROWS, :METHOD_UPDATE_WHERE, :METHOD_GET_ROWS_WHERE_BETWEEN, :METHOD_DELETE_WHERE, :ROW_VALUE_LABEL, :ROW_VALUES_LABEL, :NO_RESULTS_IN_RESULT_SET, :COLUMN_NAME_LABEL, :INSERT_END

    def jfields_org_allbinary_logic_communication_sql_AbSqlRow
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
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
        jfields_org_allbinary_logic_communication_sql_AbSqlRow
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
    java_overload :getValue, 1
    

    def updateWhere_j3(key, value, updatedKeyValuePairs)
        java_monitor.synchronize do
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                    columnValue = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(@sqlStrings.CLOSE_QUOTE, @ESCAPE_QUOTES).all(columnValue)
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
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_UPDATE_WHERE)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_UPDATE_WHERE, e)
            end
        end
        end
    end
    

    # throws Exception
    def updateWhere_j2(whereKeyValuePairs, updatedKeyValuePairs)
        java_monitor.synchronize do
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@COLUMN_NAME_LABEL + columnName, self, @METHOD_UPDATE_WHERE)
                end
                columnValue = updatedKeyValuePairs.get(columnName)
                if columnValue == nil
                    columnValue = @stringUtil.EMPTY_STRING
                else
                    columnValue = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(@sqlStrings.CLOSE_QUOTE, @ESCAPE_QUOTES).all(columnValue)
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_UPDATE_WHERE)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_UPDATE_WHERE, e)
            end
            raise e
        end
        end
    end

    def updateWhere(*java_overload_args)
        return updateWhere_j3(*java_overload_args) if java_overload_args.length == 3
        return updateWhere_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method updateWhere takes #{java_overload_args.length} arguments"
    end
    

    def deleteWhere_j2(key, value)
        java_monitor.synchronize do
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_DELETE_WHERE)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + stringBuffer.to_s, self, @METHOD_DELETE_WHERE, e)
            end
        end
        end
    end
    

    def deleteWhere_j1(keysAndValues)
        java_monitor.synchronize do
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_DELETE_WHERE)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + stringBuffer.to_s, self, @METHOD_DELETE_WHERE, e)
            end
        end
        end
    end

    def deleteWhere(*java_overload_args)
        return deleteWhere_j2(*java_overload_args) if java_overload_args.length == 2
        return deleteWhere_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method deleteWhere takes #{java_overload_args.length} arguments"
    end
    

    def insert(values)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.INSERT_INTO)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.VALUES)
        begin
            (0...values.size() - 1).each do |i|
                value = self.getValue(values.get(i))
                value = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(@sqlStrings.ESCAPE, @sqlStrings.DOUBLE_ESCAPE).all(value)
                stringBuffer.append(value)
                stringBuffer.append(@sqlStrings.SINGLE_QUOTE_COMMA_SEP)
            end
            value = self.getValue(values.get(values.size() - 1))
            value = ::Org::Allbinary::Logic::StringPackage::Regex::Replace::Replace.new(@sqlStrings.ESCAPE, @sqlStrings.DOUBLE_ESCAPE).all(value)
            stringBuffer.append(value)
            stringBuffer.append(@INSERT_END)
            sqlStatement = stringBuffer.to_s
            self.executeSQLStatement(sqlStatement)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF((@SUCCESS_SQL_STATEMENT).to_s + sqlStatement, self, @INSERT)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + stringBuffer.to_s, self, INSERT, e)
            end
        end
    end
    java_overload :insert, 1
    

    def getRow(keysAndValues)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
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
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@ROW_VALUE_LABEL + result.to_s, self, @METHOD_GET_ROW)
                end
                return result
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.putF(@NO_RESULTS_IN_RESULT_SET, self, @METHOD_GET_ROW)
            end
            return nil
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_GET_ROW, e)
            end
            return nil
        end
    end
    java_overload :getRow, 1
    

    def getRows_j1(keysAndValues)
        return self.getRows(keysAndValues, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
    end
    

    def getRows_j2(keysAndValues, more)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT_ALL_FROM)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.WHERE)
        begin
            rows = ::Org::Allbinary::Util::BasicArrayListD.new()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
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
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@GET_ROW + resultAsString, self, @METHOD_GET_ROWS)
                end
                rows.add(result)
            end
            return rows
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_GET_ROWS, e)
            end
            return nil
        end
    end

    def getRows(*java_overload_args)
        return getRows_j1(*java_overload_args) if java_overload_args.length == 1
        return getRows_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getRows takes #{java_overload_args.length} arguments"
    end
    

    def getAllRows()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT_ALL_FROM)
        stringBuffer.append(self.getTableName())
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@sqlStrings.SQL_STATEMENT_LABEL + stringBuffer, self, @METHOD_GET_ALL_ROWS)
            end
            rows = ::Org::Allbinary::Util::BasicArrayListD.new()
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
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@ROW_VALUES_LABEL + result.to_s, self, @METHOD_GET_ALL_ROWS)
                end
                rows.add(result)
            end
            return rows
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_GET_ALL_ROWS, e)
            end
            return nil
        end
    end
    java_overload :getAllRows, 0
    

    def getRowsWhereBetween_j4(whereKeyValuePairs, betweenColumn, smallest, largest)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT_ALL_FROM)
        stringBuffer.append(self.getTableName())
        begin
            rows = ::Org::Allbinary::Util::BasicArrayListD.new()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
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
                columnNames = ::Org::Allbinary::Util::BasicArrayListD.new()
                columnCount = resultSetMetaData.getColumnCount()
                (1..columnCount).each do |index|
                    columnName = resultSetMetaData.getColumnName(index)
                    field = rset.getString(columnName)
                    result.put(columnName, field)
                end
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@ROW_VALUE_LABEL + result.to_s, self, @METHOD_GET_ROWS_WHERE_BETWEEN)
                end
                rows.add(result)
            end
            return rows
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_GET_ROWS_WHERE_BETWEEN, e)
            end
            return nil
        end
    end
    

    def getRowsWhereBetween_j3(betweenColumn, smallest, largest)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT_ALL_FROM)
        stringBuffer.append(self.getTableName())
        begin
            rows = ::Org::Allbinary::Util::BasicArrayListD.new()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
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
                columnNames = ::Org::Allbinary::Util::BasicArrayListD.new()
                columnCount = resultSetMetaData.getColumnCount()
                (1..columnCount).each do |index|
                    columnName = resultSetMetaData.getColumnName(index)
                    field = rset.getString(columnName)
                    result.put(columnName, field)
                end
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@ROW_VALUE_LABEL + result.to_s, self, @METHOD_GET_ROWS_WHERE_BETWEEN)
                end
                rows.add(result)
            end
            return rows
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put(@FAILED_SQL_STATEMENT + stringBuffer, self, @METHOD_GET_ROWS_WHERE_BETWEEN, e)
            end
            return nil
        end
    end

    def getRowsWhereBetween(*java_overload_args)
        return getRowsWhereBetween_j4(*java_overload_args) if java_overload_args.length == 4
        return getRowsWhereBetween_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method getRowsWhereBetween takes #{java_overload_args.length} arguments"
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; module Regex; module Replace; autoload :Replace, "org/allbinary/logic/string/regex/replace/Replace" unless const_defined?(:Replace, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

