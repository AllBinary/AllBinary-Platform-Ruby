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

# require "java/sql/ResultSet"
require "org/allbinary/logic/communication/sql/AbSqlTable"

class AbSqlColumn < AbSqlTable
    attr_accessor :logUtil, :LARGEST_INT_VALUE_IN_COLUMN, :METHOD_GET_LARGETS_INTEGER_IN_COLUMN, :METHOD_GET_COLUMN, :METHOD_GET_COLUMN_WHERE, :INVALID_RESULT

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @LARGEST_INT_VALUE_IN_COLUMN = "\nLargest Int Value in column: "
        @METHOD_GET_LARGETS_INTEGER_IN_COLUMN = "getLargestIntegerInColumn"
        @METHOD_GET_COLUMN = "getColumn"
        @METHOD_GET_COLUMN_WHERE = "getColumnWhere"
        @INVALID_RESULT = "-1"
    end
    

    def initialize(databaseConnectionInfoInterface)
        super(databaseConnectionInfoInterface)
        initialize_fields
    end
    

    def getLargestIntegerInColumnWhere(columnName, key, value)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT)
        stringBuffer.append(columnName)
        stringBuffer.append(@sqlStrings.FROM)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.WHERE)
        stringBuffer.append(key)
        stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
        stringBuffer.append(value)
        stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
        sqlStatement = stringBuffer.to_s
        begin
            largest = 0
            rset = executeSQLStatement(sqlStatement)
            while rset.next_()
                intValue = rset.getInt(columnName)
                if intValue > largest
                    largest = intValue
                end
            end
            largestAsString = largest.to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@sqlStrings.SQL_STATEMENT_LABEL)
                stringBuffer.append(sqlStatement)
                stringBuffer.append(@LARGEST_INT_VALUE_IN_COLUMN)
                stringBuffer.append(largestAsString)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET_LARGETS_INTEGER_IN_COLUMN)
            end
            return largestAsString
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_GET_LARGETS_INTEGER_IN_COLUMN, e)
            end
            return @INVALID_RESULT
        end
    end
    

    def getColumn(columnName)
        column = BasicArrayListD.new()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT)
        stringBuffer.append(columnName)
        stringBuffer.append(@sqlStrings.FROM)
        stringBuffer.append(self.getTableName())
        sqlStatement = stringBuffer.to_s
        begin
            rset = executeSQLStatement(sqlStatement)
            while rset.next_()
                field = rset.getObject(columnName).to_s
                column.add(field)
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@sqlStrings.SQL_STATEMENT_LABEL)
                stringBuffer.append(sqlStatement)
                stringBuffer.append(@sqlStrings.COLUMN_VALUE)
                stringBuffer.append(column.to_s)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET_COLUMN)
            end
            return column
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_GET_COLUMN, e)
            end
            return column
        end
    end
    

    def getColumnWhere(columnName, key, value)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT)
        stringBuffer.append(columnName)
        stringBuffer.append(@sqlStrings.FROM)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.WHERE)
        stringBuffer.append(key)
        stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
        stringBuffer.append(value)
        stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
        sqlStatement = stringBuffer.to_s
        column = BasicArrayListD.new()
        rset = nil
        field = nil
        begin
            rset = executeSQLStatement(sqlStatement)
            while rset.next_()
                field = rset.getObject(columnName).to_s
                column.add(field)
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@sqlStrings.SQL_STATEMENT_LABEL)
                stringBuffer.append(sqlStatement)
                stringBuffer.append(@sqlStrings.COLUMN_VALUE)
                stringBuffer.append(column.to_s)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET_COLUMN_WHERE)
            end
            return column
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_GET_COLUMN_WHERE, e)
            end
            return column
        end
    end
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/init/db/DbConnectionInfo"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

