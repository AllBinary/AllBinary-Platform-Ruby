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
# package org.allbinary.business.init

require "org/allbinary/business/init/InitSql"

class InitInfoEntity < InitSql
    attr_accessor :NAME, :NOTHING, :tableName, :tableData, :NOT_IN_DB, :METHOD_GET, :METHOD_IS, :METHOD_ADD, :CREATED_SUCCESS, :FAILED_TO_CREATE

    def initialize_fields
        @NAME = "InitInfoEntity"
        @NOTHING = "NOTHING"
        @tableName = "initdata"
        @tableData = nil
        @NOT_IN_DB = "Not In DB"
        @METHOD_GET = "get()"
        @METHOD_IS = "is()"
        @METHOD_ADD = "add()"
        @CREATED_SUCCESS = " Created Successfully"
        @FAILED_TO_CREATE = "Failed to create "
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(@NOTHING)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(InitInfo.getInstance().TESTING)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(InitInfo.getInstance().TESTHTMLPATH)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(InitInfo.getInstance().MAINPATH)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(@sqlStrings.PRIMARY_KEY)
        stringBuffer.append(@NOTHING)
        stringBuffer.append(@sqlStrings.END_)
        @tableData = stringBuffer.to_s
        self.setTable(@tableName)
    end
    

    def get()
        begin
            keyAndValue = StdUtil.getInstance().createHashMap()
            keyAndValue.put(@NOTHING, @NOTHING)
            hashMap = getRow(keyAndValue)
            if hashMap != nil
                InitInfo.getInstance().set(hashMap)
                return true
            else
                if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)
                    PreLogUtil.put(@NOT_IN_DB, @NAME, @METHOD_GET)
                end
                return false
            end
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE(@commonStrings.EXCEPTION, @NAME, @METHOD_GET, e)
            end
            return false
        end
    end
    

    def is()
        begin
            keyAndValue = StdUtil.getInstance().createHashMap()
            keyAndValue.put(@NOTHING, @NOTHING)
            hashMap = getRow(keyAndValue)
            if hashMap != nil
                return true
            else
                if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADER)
                    PreLogUtil.put(@NOT_IN_DB, @NAME, @METHOD_IS)
                end
                return false
            end
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE(@commonStrings.EXCEPTION, @NAME, @METHOD_IS, e)
            end
            return false
        end
    end
    

    def update()
        updateWhere(@NOTHING, @NOTHING, InitInfo.getInstance().toHashMap())
    end
    

    def add()
        begin
            values = BasicArrayListD.new()
            values.add(@NOTHING)
            values.add(InitInfo.getInstance().getTesting())
            values.add(InitInfo.getInstance().getTestHtmlPath())
            values.add(InitInfo.getInstance().getMainPath())
            insert(values)
        rescue StandardError => e
            if LogConfigTypes::LOGGING.contains(LogConfigTypeFactory.getInstance().PRELOADERERROR)
                PreLogUtil.putOE(@commonStrings.EXCEPTION, @NAME, @METHOD_ADD, e)
            end
        end
    end
    

    def createTable()
        if super(@tableData)
            return @tableName + @CREATED_SUCCESS
        else
            stringBuffer = StringMaker.new()
            stringBuffer.append(@FAILED_TO_CREATE)
            stringBuffer.append(@tableData)
            stringBuffer.append(AbPathData.getInstance().EXTENSION_SEP)
            return stringBuffer.to_s
        end
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/PreLogUtil"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory"
require "org/allbinary/logic/communication/log/config/type/LogConfigTypes"
require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/business/init/InitInfo"

