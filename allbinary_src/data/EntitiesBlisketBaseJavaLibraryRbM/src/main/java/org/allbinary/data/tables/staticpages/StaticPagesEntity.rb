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
# package org.allbinary.data.tables.staticpages

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/staticpages/StaticPagesEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Staticpages

class StaticPagesEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include StaticPagesEntityInterface
    attr_accessor :logUtil, :basicItemData, :TABLENAME

    def jfields_org_allbinary_data_tables_staticpages_StaticPagesEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @basicItemData = ::Org::Allbinary::Business::User::Commerce::Inventory::Item::BasicItemData.getInstance()
        @TABLENAME = "staticpages"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::StaticPagesDbInitInfo.new())
        jfields_org_allbinary_data_tables_staticpages_StaticPagesEntity
        self.setTableName(@TABLENAME)
    end
    

    def insert(values)
        begin
            StaticPagesEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
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
    

    def getFile(store, keywords)
        whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        whereHashMap.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, store)
        whereHashMap.put(@basicItemData.KEYWORDS, keywords)
        file = StaticPagesEntity.superclass.java_super_method(:getField, 2).bind(self).call(whereHashMap, ::Org::Allbinary::Logic::ControlPackage::Search::SearchData::PAGE)
        return file
    end
    java_overload :getFile, 2
    

    def delete(keywords)
        StaticPagesEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(@basicItemData.KEYWORDS, keywords)
    end
    java_overload :delete, 1
    

    def dropTable()
        returnStr = StaticPagesEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
        return returnStr
    end
    java_overload :dropTable, 0
    

    def update(updatedValues)
        StaticPagesEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(@basicItemData.KEYWORDS, updatedValues.get(@basicItemData.KEYWORDS), updatedValues)
    end
    java_overload :update, 1
    

    def createTableStatement()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@TABLENAME).append(@sqlStrings.START).append(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME).append(@sqlTypeStrings.SIXTY_CHAR_COLUMN_NOT_NULL).append(@basicItemData.KEYWORDS).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Logic::ControlPackage::Search::SearchData::PAGE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME).append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COMMA_SEP).append(@basicItemData.KEYWORDS).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return StaticPagesEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :StaticPagesDbInitInfo, "org/allbinary/business/init/db/StaticPagesDbInitInfo" unless const_defined?(:StaticPagesDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Item; autoload :BasicItemData, "org/allbinary/business/user/commerce/inventory/item/BasicItemData" unless const_defined?(:BasicItemData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Search; autoload :SearchData, "org/allbinary/logic/control/search/SearchData" unless const_defined?(:SearchData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

