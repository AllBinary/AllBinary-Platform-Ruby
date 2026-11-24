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

require "java/lang/JavaOverload"
require "org/allbinary/business/init/InitSql"

module ::Org; module Allbinary; module Business; module Init

class InitInfoEntity < InitSql
    attr_accessor :NAME, :NOTHING, :tableName, :tableData, :NOT_IN_DB, :METHOD_GET, :METHOD_IS, :METHOD_ADD, :CREATED_SUCCESS, :FAILED_TO_CREATE

    def jfields_org_allbinary_business_init_InitInfoEntity
        @NAME = "InitInfoEntity"
        @NOTHING = "NOTHING"
        @tableName = "initdata"
        @tableData = nil unless instance_variable_defined?(:@tableData)
        @NOT_IN_DB = "Not In DB"
        @METHOD_GET = "get()"
        @METHOD_IS = "is()"
        @METHOD_ADD = "add()"
        @CREATED_SUCCESS = " Created Successfully"
        @FAILED_TO_CREATE = "Failed to create "
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_business_init_InitInfoEntity
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
            keyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            keyAndValue.put(@NOTHING, @NOTHING)
            hashMap = getRow(keyAndValue)
            if hashMap != nil
                InitInfo.getInstance().set(hashMap)
                return true
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@NOT_IN_DB, @NAME, @METHOD_GET)
                end
                return false
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, @NAME, @METHOD_GET, e)
            end
            return false
        end
    end
    java_overload :get, 0
    

    def is()
        begin
            keyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            keyAndValue.put(@NOTHING, @NOTHING)
            hashMap = getRow(keyAndValue)
            if hashMap != nil
                return true
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADER)
                    ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.put(@NOT_IN_DB, @NAME, @METHOD_IS)
                end
                return false
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, @NAME, @METHOD_IS, e)
            end
            return false
        end
    end
    java_overload :is, 0
    

    def update()
        updateWhere(@NOTHING, @NOTHING, InitInfo.getInstance().toHashMap())
    end
    java_overload :update, 0
    

    def add()
        begin
            values = ::Org::Allbinary::Util::BasicArrayListD.new()
            values.add(@NOTHING)
            values.add(InitInfo.getInstance().getTesting())
            values.add(InitInfo.getInstance().getTestHtmlPath())
            values.add(InitInfo.getInstance().getMainPath())
            insert(values)
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                ::Org::Allbinary::Logic::Communication::Log::PreLogUtil.putOE(@commonStrings.EXCEPTION, @NAME, @METHOD_ADD, e)
            end
        end
    end
    java_overload :add, 0
    

    def createTable()
        if InitInfoEntity.superclass.java_super_method(:createTable, 1).bind(self).call(@tableData)
            return @tableName + @CREATED_SUCCESS
        else
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
            stringBuffer.append(@FAILED_TO_CREATE)
            stringBuffer.append(@tableData)
            stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().EXTENSION_SEP)
            return stringBuffer.to_s
        end
    end
    java_overload :createTable, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :PreLogUtil, "org/allbinary/logic/communication/log/PreLogUtil" unless const_defined?(:PreLogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
autoload :InitInfo, "org/allbinary/business/init/InitInfo" unless const_defined?(:InitInfo, false)

end; end; end; end

