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

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/category/CategoryEntityInterface"

class CategoryEntity < AbSqlBean
    include CategoryEntityInterface
    attr_accessor :logUtil, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "categories"
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 0 then constructor0(*args)
        end
    end
    

    def constructor1(categoryFactoryInterface)
        method(:initialize).super_method.call(InventoryDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def constructor0()
        method(:initialize).super_method.call(InventoryDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def insert(category)
        begin
            categoryVector = category.toVector()
            values = BasicArrayListD.new()
            values.add(categoryVector.get(0))
            values.add(categoryVector.get(1))
            super(values)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
            end
        end
    end
    

    def delete(value)
        begin
            self.class.superclass.instance_method(:deleteWhere).bind(self).call(CategoryData.getInstance().NAME, value)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    

    def createTableStatement()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(CategoryData.getInstance().NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(CategoryData.getInstance().LEVEL)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@sqlStrings.PRIMARY_KEY)
        stringBuffer.append(CategoryData.getInstance().NAME)
        stringBuffer.append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
    

    def update(updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(CategoryData.getInstance().NAME, updatedValues.get(CategoryData.getInstance().NAME), updatedValues)
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/category/Category"
require "org/allbinary/business/category/CategoryData"
require "org/allbinary/business/category/CategoryFactoryInterface"
require "org/allbinary/business/init/db/InventoryDbInitInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

