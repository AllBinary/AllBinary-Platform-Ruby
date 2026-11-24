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
# require "java/util/Set"
require "org/allbinary/logic/communication/sql/AbSqlRow"

module ::Org; module Allbinary; module Logic; module Communication; module Sql

class AbSqlBean < AbSqlRow
    attr_accessor :logUtil, :METHOD_GET_FIELD, :METHOD_IS_SUBSET_OF_ENTRY

    def jfields_org_allbinary_logic_communication_sql_AbSqlBean
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @METHOD_GET_FIELD = "getField"
        @METHOD_IS_SUBSET_OF_ENTRY = "isSubsetOfEntry"
    end
    

    def initialize(databaseConnectionInfoInterface)
        super(databaseConnectionInfoInterface)
        jfields_org_allbinary_logic_communication_sql_AbSqlBean
    end
    

    def getField_j3(key, value, requestedField)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_GET_FIELD, e)
            end
            return (@FAILED_SQL_STATEMENT).to_s + sqlStatement
        end
    end
    

    def getField_j2(keysAndValues, requestedField)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_GET_FIELD, e)
            end
            return (@FAILED_SQL_STATEMENT).to_s + sqlStatement
        end
    end

    def getField(*java_overload_args)
        return getField_j3(*java_overload_args) if java_overload_args.length == 3
        return getField_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method getField takes #{java_overload_args.length} arguments"
    end
    

    def isSubsetOfEntry(key, value, columnsAndValues)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                        return ::Org::Allbinary::Globals::GLOBALS2::NOTASUBSET
                    end
                end
            end
            if rset.getRow() != 1
                return ::Org::Allbinary::Globals::GLOBALS2::NOTASUBSET
            else
                return ::Org::Allbinary::Globals::GLOBALS2::ISASUBSET
            end
        rescue StandardError => e
            sqlStatement = stringBuffer.to_s
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGERROR)
                @logUtil.put((@FAILED_SQL_STATEMENT).to_s + sqlStatement, self, @METHOD_IS_SUBSET_OF_ENTRY, e)
            end
            return (@FAILED_SQL_STATEMENT).to_s + sqlStatement
        end
    end
    java_overload :isSubsetOfEntry, 3
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

