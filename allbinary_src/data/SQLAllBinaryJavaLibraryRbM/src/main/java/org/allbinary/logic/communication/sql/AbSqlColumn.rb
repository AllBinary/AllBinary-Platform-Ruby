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

require "java/lang/JavaOverload"
# require "java/sql/ResultSet"
require "org/allbinary/logic/communication/sql/AbSqlTable"

module ::Org; module Allbinary; module Logic; module Communication; module Sql

class AbSqlColumn < AbSqlTable
    attr_accessor :logUtil, :LARGEST_INT_VALUE_IN_COLUMN, :METHOD_GET_LARGETS_INTEGER_IN_COLUMN, :METHOD_GET_COLUMN, :METHOD_GET_COLUMN_WHERE, :INVALID_RESULT

    def jfields_org_allbinary_logic_communication_sql_AbSqlColumn
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @LARGEST_INT_VALUE_IN_COLUMN = "\nLargest Int Value in column: "
        @METHOD_GET_LARGETS_INTEGER_IN_COLUMN = "getLargestIntegerInColumn"
        @METHOD_GET_COLUMN = "getColumn"
        @METHOD_GET_COLUMN_WHERE = "getColumnWhere"
        @INVALID_RESULT = "-1"
    end
    

    def initialize(databaseConnectionInfoInterface)
        super(databaseConnectionInfoInterface)
        jfields_org_allbinary_logic_communication_sql_AbSqlColumn
    end
    

    def getLargestIntegerInColumnWhere(columnName, key, value)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@sqlStrings.SQL_STATEMENT_LABEL)
                stringBuffer.append(sqlStatement)
                stringBuffer.append(@LARGEST_INT_VALUE_IN_COLUMN)
                stringBuffer.append(largestAsString)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET_LARGETS_INTEGER_IN_COLUMN)
            end
            return largestAsString
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_GET_LARGETS_INTEGER_IN_COLUMN, e)
            end
            return @INVALID_RESULT
        end
    end
    java_overload :getLargestIntegerInColumnWhere, 3
    

    def getColumn(columnName)
        column = ::Org::Allbinary::Util::BasicArrayListD.new()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@sqlStrings.SQL_STATEMENT_LABEL)
                stringBuffer.append(sqlStatement)
                stringBuffer.append(@sqlStrings.COLUMN_VALUE)
                stringBuffer.append(column.to_s)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET_COLUMN)
            end
            return column
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_GET_COLUMN, e)
            end
            return column
        end
    end
    java_overload :getColumn, 1
    

    def getColumnWhere(columnName, key, value)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        column = ::Org::Allbinary::Util::BasicArrayListD.new()
        rset = nil
        field = nil
        begin
            rset = executeSQLStatement(sqlStatement)
            while rset.next_()
                field = rset.getObject(columnName).to_s
                column.add(field)
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                stringBuffer.delete(0, stringBuffer.length())
                stringBuffer.append(@sqlStrings.SQL_STATEMENT_LABEL)
                stringBuffer.append(sqlStatement)
                stringBuffer.append(@sqlStrings.COLUMN_VALUE)
                stringBuffer.append(column.to_s)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET_COLUMN_WHERE)
            end
            return column
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_GET_COLUMN_WHERE, e)
            end
            return column
        end
    end
    java_overload :getColumnWhere, 3
end

module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

