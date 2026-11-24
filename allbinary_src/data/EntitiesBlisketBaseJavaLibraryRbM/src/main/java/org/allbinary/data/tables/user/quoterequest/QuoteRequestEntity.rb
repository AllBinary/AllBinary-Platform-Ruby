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
# package org.allbinary.data.tables.user.quoterequest

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/quoterequest/QuoteRequestEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Quoterequest

class QuoteRequestEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include QuoteRequestEntityInterface
    attr_accessor :logUtil, :tableName

    def jfields_org_allbinary_data_tables_user_quoterequest_QuoteRequestEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "quoterequest"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_quoterequest_QuoteRequestEntity
        self.setTableName(@tableName)
    end
    

    def insert(values)
        begin
            QuoteRequestEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
            end
        end
    end
    java_overload :insert, 1
    

    # throws Exception
    def get(userName, id)
        row = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        row.put(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
        row.put(::Org::Allbinary::Business::Quoterequest::QuoteRequestData.getInstance().ID, (id).to_s)
        quoteRequestHashMap = QuoteRequestEntity.superclass.java_super_method(:getRow, 1).bind(self).call(row)
        if quoteRequestHashMap != nil
            return ::Org::Allbinary::Business::User::Quoterequest::QuoteRequest.new(quoteRequestHashMap)
        else
            return nil
        end
    end
    java_overload :get, 2
    

    def getIds(userName)
        return QuoteRequestEntity.superclass.java_super_method(:getColumnWhere, 3).bind(self).call(::Org::Allbinary::Business::Quoterequest::QuoteRequestData.getInstance().ID, ::Org::Allbinary::Business::User::UserData::USERNAME, userName)
    end
    java_overload :getIds, 1
    

    def deleteWhere(key, value)
        begin
            QuoteRequestEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(key, value)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "deleteWhere")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "deleteWhere", e)
            end
        end
    end
    java_overload :deleteWhere, 2
    

    def createTableStatement()
        quoteRequestData = ::Org::Allbinary::Business::Quoterequest::QuoteRequestData.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START)
        stringBuffer.append(quoteRequestData.ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::UserData::USERNAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(quoteRequestData.PROJECT_INFO)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(quoteRequestData.CUSTOMER_COMMENTS)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(quoteRequestData.BUDGET)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(quoteRequestData.TIMEFRAME)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(quoteRequestData.COMMENTS)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@sqlStrings.PRIMARY_KEY)
        stringBuffer.append(quoteRequestData.ID)
        stringBuffer.append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return QuoteRequestEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def dropTable()
        result = String.new(QuoteRequestEntity.superclass.java_super_method(:dropTable, 0).bind(self).call())
        return result
    end
    java_overload :dropTable, 0
    

    def update(userName, updatedValues)
        QuoteRequestEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(::Org::Allbinary::Business::User::UserData::USERNAME, userName, updatedValues)
    end
    java_overload :update, 2
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Quoterequest; autoload :QuoteRequestData, "org/allbinary/business/quoterequest/QuoteRequestData" unless const_defined?(:QuoteRequestData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Quoterequest; autoload :QuoteRequest, "org/allbinary/business/user/quoterequest/QuoteRequest" unless const_defined?(:QuoteRequest, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

