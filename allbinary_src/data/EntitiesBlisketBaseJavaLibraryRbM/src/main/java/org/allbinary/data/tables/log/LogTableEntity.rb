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
# package org.allbinary.data.tables.log

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/log/LogTableEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Log

class LogTableEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include LogTableEntityInterface
    attr_accessor :tableName

    def jfields_org_allbinary_data_tables_log_LogTableEntity
        @tableName = "log"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::LogDbInitInfo.new())
        jfields_org_allbinary_data_tables_log_LogTableEntity
        self.setTableName(@tableName)
    end
    

    def createTableStatement()
        abeHttpRequestInfoData = ::Org::Allbinary::Logic::Communication::Http::Request::AbeHttpRequestInfoData.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(@sqlStrings.ID).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData.HTTP_USER_AGENT).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData.REMOTE_HOST).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(abeHttpRequestInfoData.REMOTE_ADDRESS).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData.REQUEST_FILE_PATH).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(abeHttpRequestInfoData.REMOTE_PORT).append(@sqlTypeStrings.MAX_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(@sqlStrings.ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return LogTableEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def deleteWhere(key, value)
        LogTableEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(key, value)
    end
    java_overload :deleteWhere, 2
    

    def insert(values)
        LogTableEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
    end
    java_overload :insert, 1
    

    def dropTable()
        return LogTableEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
end

module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :LogDbInitInfo, "org/allbinary/business/init/db/LogDbInitInfo" unless const_defined?(:LogDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Http; module Request; autoload :AbeHttpRequestInfoData, "org/allbinary/logic/communication/http/request/AbeHttpRequestInfoData" unless const_defined?(:AbeHttpRequestInfoData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end

end; end; end; end; end

