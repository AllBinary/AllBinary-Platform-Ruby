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
# require "java/util/Set"
require "org/allbinary/logic/communication/sql/AbSqlRow"

class AbSqlBean < AbSqlRow
    attr_accessor :logUtil, :METHOD_GET_FIELD, :METHOD_IS_SUBSET_OF_ENTRY

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @METHOD_GET_FIELD = "getField"
        @METHOD_IS_SUBSET_OF_ENTRY = "isSubsetOfEntry"
    end
    

    def initialize(databaseConnectionInfoInterface)
        super(databaseConnectionInfoInterface)
        initialize_fields
    end
    

    def getField(key, value, requestedField)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT)
        stringBuffer.append(requestedField)
        stringBuffer.append(@sqlStrings.FROM)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.WHERE)
        stringBuffer.append(key)
        stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
        stringBuffer.append(value)
        stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
        sqlStatement = stringBuffer.to_s
        begin
            field = @stringUtil.EMPTY_STRING
            rset = executeSQLStatement(sqlStatement)
            while rset.next_()
                field = rset.getString(requestedField)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append(@sqlStrings.SQL_STATEMENT_LABEL)
                    stringBuffer.append(sqlStatement)
                    stringBuffer.append(@sqlStrings.FIELD_VALUE)
                    stringBuffer.append(field)
                    @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET_FIELD)
                end
                return field
            end
            return nil
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_GET_FIELD, e)
            end
            return (@FAILED_SQL_STATEMENT).to_s + sqlStatement
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def getField(keysAndValues, requestedField)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT)
        stringBuffer.append(requestedField)
        stringBuffer.append(@sqlStrings.FROM)
        stringBuffer.append(self.getTableName())
        stringBuffer.append(@sqlStrings.WHERE)
        begin
            field = @stringUtil.EMPTY_STRING
            set = keysAndValues.keySet()
            keyArray = set.toArray()
            size = keyArray.length
            key = nil
            value = nil
            (0...size).each do |i|
                key = keyArray[i]
                value = String.new(keysAndValues.get(key))
                stringBuffer.append(key)
                stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
                stringBuffer.append(value)
                stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
                if i < size - 1
                    stringBuffer.append(@sqlStrings.AND)
                end
            end
            sqlStatement = stringBuffer.to_s
            rset = executeSQLStatement(sqlStatement)
            while rset.next_()
                field = rset.getString(requestedField)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    stringBuffer.delete(0, stringBuffer.length())
                    stringBuffer.append(@sqlStrings.SQL_STATEMENT_LABEL)
                    stringBuffer.append(sqlStatement)
                    stringBuffer.append(@sqlStrings.FIELD_VALUE)
                    stringBuffer.append(field)
                    @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET_FIELD)
                end
                return field
            end
            return nil
        rescue StandardError => e
            sqlStatement = stringBuffer.to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_GET_FIELD, e)
            end
            return (@FAILED_SQL_STATEMENT).to_s + sqlStatement
        end
    end
    

    def isSubsetOfEntry(key, value, columnsAndValues)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.SELECT)
        begin
            keyArray = columnsAndValues.keySet().toArray()
            size = keyArray.length
            stringBuffer.append(@commonSeps.SPACE)
            stringBuffer.append(key)
            (0...size).each do |i|
                stringBuffer.append(@commonSeps.SPACE)
                stringBuffer.append(keyArray[i].to_s)
            end
            stringBuffer.append(@sqlStrings.FROM)
            stringBuffer.append(self.getTableName())
            stringBuffer.append(@sqlStrings.WHERE)
            stringBuffer.append(key)
            stringBuffer.append(@sqlStrings.EQUAL_QUOTE)
            stringBuffer.append(value)
            stringBuffer.append(@sqlStrings.CLOSE_QUOTE)
            sqlStatement = stringBuffer.to_s
            rset = executeSQLStatement(sqlStatement)
            columnName = nil
            field = nil
            while rset.next_()
                keyArray2 = columnsAndValues.keySet().toArray()
                size2 = keyArray2.length
                (0...size2).each do |i|
                    columnName = keyArray2[i].to_s
                    field = rset.getObject(columnName).to_s
                    if (field <=> columnsAndValues.get(columnName)) != 0
                        return org.allbinary.globals.GLOBALS2.NOTASUBSET
                    end
                end
            end
            if rset.getRow() != 1
                return org.allbinary.globals.GLOBALS2.NOTASUBSET
            else
                return org.allbinary.globals.GLOBALS2.ISASUBSET
            end
        rescue StandardError => e
            sqlStatement = stringBuffer.to_s
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_IS_SUBSET_OF_ENTRY, e)
            end
            return (@FAILED_SQL_STATEMENT).to_s + sqlStatement
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/business/init/db/DbConnectionInfo"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

