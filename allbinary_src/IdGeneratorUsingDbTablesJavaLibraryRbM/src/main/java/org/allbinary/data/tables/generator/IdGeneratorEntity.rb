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

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/generator/IdGeneratorEntityInterface"

class IdGeneratorEntity < AbSqlBean
    include IdGeneratorEntityInterface
    attr_accessor :logUtil, :tableName, :tableData, :NAME, :VALUE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "idgenerator"
        @tableData = nil
        @NAME = "NAME"
        @VALUE = "VALUE"
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        @tableData = StringMaker.new().append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(@NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(@VALUE).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(@NAME).append(@sqlStrings.END_).to_s
        self.class.superclass.instance_method(:setTableName).bind(self).call(@tableName)
    end
    

    # throws Exception
    def get(name)
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(@NAME, name)
        hashMap = self.class.superclass.instance_method(:getRow).bind(self).call(keysAndValues)
        if (hashMap.get(@NAME)).compareTo(name) != 0
            raise StandardError.new("results do not match")
        end
        value = hashMap.get(@VALUE)
        return Integer(value)
    end
    

    def insert(values)
        begin
            super(values)
            @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
        rescue StandardError => e
            @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
        end
    end
    

    def delete(value)
        begin
            self.class.superclass.instance_method(:deleteWhere).bind(self).call(@NAME, value)
            @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
        rescue StandardError => e
            @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
        end
    end
    

    def update(name, value)
        map = StdUtil.getInstance().createHashMap()
        map.put(@NAME, name)
        map.put(@VALUE, value)
        self.update(map)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def update(hashMap)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(@NAME, hashMap.get(@NAME), hashMap)
    end
    

    def createTable()
        returnStr = super(@tableData)
        return returnStr
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

