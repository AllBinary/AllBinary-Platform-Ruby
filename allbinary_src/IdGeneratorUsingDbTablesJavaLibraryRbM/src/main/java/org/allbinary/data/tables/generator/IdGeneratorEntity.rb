# 
# AllBinary Open License Version 1 
# Copyright (c) 2002 AllBinary 
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
# package org.allbinary.data.tables.generator

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/generator/IdGeneratorEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Generator

class IdGeneratorEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include IdGeneratorEntityInterface
    attr_accessor :logUtil, :tableName, :tableData, :NAME, :VALUE

    def jfields_org_allbinary_data_tables_generator_IdGeneratorEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "idgenerator"
        @tableData = nil unless instance_variable_defined?(:@tableData)
        @NAME = "NAME"
        @VALUE = "VALUE"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_generator_IdGeneratorEntity
        @tableData = ::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(@NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(@VALUE).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(@NAME).append(@sqlStrings.END_).to_s
        IdGeneratorEntity.superclass.java_super_method(:setTableName, 1).bind(self).call(@tableName)
    end
    

    # throws Exception
    def get(name)
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        keysAndValues.put(@NAME, name)
        hashMap = IdGeneratorEntity.superclass.java_super_method(:getRow, 1).bind(self).call(keysAndValues)
        if (hashMap.get(@NAME)).compareTo(name) != 0
            raise StandardError.new("results do not match")
        end
        value = hashMap.get(@VALUE)
        return Integer(value)
    end
    java_overload :get, 1
    

    def insert(values)
        begin
            IdGeneratorEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
            @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
        rescue StandardError => e
            @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
        end
    end
    java_overload :insert, 1
    

    def delete(value)
        begin
            IdGeneratorEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(@NAME, value)
            @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
        rescue StandardError => e
            @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
        end
    end
    java_overload :delete, 1
    

    def update_j2(name, value)
        map = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        map.put(@NAME, name)
        map.put(@VALUE, value)
        self.update(map)
    end
    

    def update_j1(hashMap)
        IdGeneratorEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(@NAME, hashMap.get(@NAME), hashMap)
    end

    def update(*java_overload_args)
        return update_j2(*java_overload_args) if java_overload_args.length == 2
        return update_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method update takes #{java_overload_args.length} arguments"
    end
    

    def createTable()
        returnStr = IdGeneratorEntity.superclass.java_super_method(:createTable, 1).bind(self).call(@tableData)
        return returnStr
    end
    java_overload :createTable, 0
    

    def dropTable()
        return IdGeneratorEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
    

    def deleteWhere(key, value)
        IdGeneratorEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(key, value)
    end
    java_overload :deleteWhere, 2
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

end; end; end; end; end

