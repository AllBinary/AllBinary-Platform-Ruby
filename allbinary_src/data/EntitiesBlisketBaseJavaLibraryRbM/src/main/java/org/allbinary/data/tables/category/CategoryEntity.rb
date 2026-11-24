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
# package org.allbinary.data.tables.category

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/category/CategoryEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module Category

class CategoryEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include CategoryEntityInterface
    attr_accessor :logUtil, :tableName

    def jfields_org_allbinary_data_tables_category_CategoryEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "categories"
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_data_tables_category_CategoryEntity_1(*args)
        when 0 then jnew_org_allbinary_data_tables_category_CategoryEntity_0(*args)
        else raise ArgumentError, "No constructor of CategoryEntity takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_data_tables_category_CategoryEntity_1(categoryFactoryInterface)
        CategoryEntity.superclass.instance_method(:initialize).bind(self).call(::Org::Allbinary::Business::Init::Db::InventoryDbInitInfo.new())
        jfields_org_allbinary_data_tables_category_CategoryEntity
        self.setTableName(@tableName)
    end
    

    def jnew_org_allbinary_data_tables_category_CategoryEntity_0()
        CategoryEntity.superclass.instance_method(:initialize).bind(self).call(::Org::Allbinary::Business::Init::Db::InventoryDbInitInfo.new())
        jfields_org_allbinary_data_tables_category_CategoryEntity
        self.setTableName(@tableName)
    end
    

    def insert_j1_1(category)
        begin
            categoryVector = category.toVector()
            values = ::Org::Allbinary::Util::BasicArrayListD.new()
            values.add(categoryVector.get(0))
            values.add(categoryVector.get(1))
            CategoryEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
            end
        end
    end
    

    def delete(value)
        begin
            CategoryEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME, value)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    java_overload :delete, 1
    

    def createTableStatement()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Category::CategoryData.getInstance().LEVEL)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@sqlStrings.PRIMARY_KEY)
        stringBuffer.append(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME)
        stringBuffer.append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return CategoryEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def update(updatedValues)
        CategoryEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME, updatedValues.get(::Org::Allbinary::Business::Category::CategoryData.getInstance().NAME), updatedValues)
    end
    java_overload :update, 1
    

    def dropTable()
        return CategoryEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
    

    def insert_j1_2(values)
        CategoryEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
    end

    def insert(*java_overload_args)
        return insert_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method insert takes #{java_overload_args.length} arguments"
    end

    def insert_j1(*java_overload_args)
        return insert_j1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Business::Category::Category))
        return insert_j1_2(*java_overload_args)
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :Category, "org/allbinary/business/category/Category" unless const_defined?(:Category, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryData, "org/allbinary/business/category/CategoryData" unless const_defined?(:CategoryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Category; autoload :CategoryFactoryInterface, "org/allbinary/business/category/CategoryFactoryInterface" unless const_defined?(:CategoryFactoryInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :InventoryDbInitInfo, "org/allbinary/business/init/db/InventoryDbInitInfo" unless const_defined?(:InventoryDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

