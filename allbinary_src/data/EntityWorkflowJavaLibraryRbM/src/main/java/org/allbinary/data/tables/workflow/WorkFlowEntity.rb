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
# package org.allbinary.data.tables.workflow

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/workflow/WorkFlowEntityInterface"

class WorkFlowEntity < AbSqlBean
    include WorkFlowEntityInterface
    attr_accessor :logUtil, :abeClientInformation, :tableName, :METHOD_GET, :METHOD_UPDATE

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @tableName = "workflows"
        @METHOD_GET = "get()"
        @METHOD_UPDATE = "update"
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def insert(values)
        begin
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
    

    def delete(name, storeName)
        begin
            keysAndValues = StdUtil.getInstance().createHashMap()
            keysAndValues.put(WorkFlowData.getInstance().NAME, name)
            keysAndValues.put(StoreFrontData.getInstance().NAME, storeName)
            self.class.superclass.instance_method(:deleteWhere).bind(self).call(keysAndValues)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    

    # throws Exception, LicensingException
    def get(name, storeName)
        begin
            keysAndValues = StdUtil.getInstance().createHashMap()
            keysAndValues.put(WorkFlowData.getInstance().NAME, name)
            keysAndValues.put(StoreFrontData.getInstance().NAME, storeName)
            hashMap = self.class.superclass.instance_method(:getRow).bind(self).call(keysAndValues)
            return DbWorkFlowFactory.getInstance().getInstance(@abeClientInformation, hashMap)
        rescue LicensingException => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @METHOD_GET, e)
            end
            raise e
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @METHOD_GET, e)
            end
            raise e
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def get(storeName)
        begin
            workFlowsVector = BasicArrayListD.new()
            keysAndValues = StdUtil.getInstance().createHashMap()
            keysAndValues.put(StoreFrontData.getInstance().NAME, storeName)
            hashMapVector = self.class.superclass.instance_method(:getRows).bind(self).call(keysAndValues)
            size = hashMapVector.size()
            (0...size).each do |i|
                workFlowHashMap = hashMapVector.get(i)
                if workFlowHashMap != nil
                    workFlowsVector.add(DbWorkFlowFactory.getInstance().getInstance(@abeClientInformation, workFlowHashMap))
                end
            end
            return workFlowsVector
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @METHOD_GET, e)
            end
            return nil
        end
    end
    

    def update(updatedValues)
        begin
            wherekeysAndValues = StdUtil.getInstance().createHashMap()
            wherekeysAndValues.put(WorkFlowData.getInstance().NAME, updatedValues.get(WorkFlowData.getInstance().NAME))
            wherekeysAndValues.put(StoreFrontData.getInstance().NAME, updatedValues.get(StoreFrontData.getInstance().NAME))
            self.class.superclass.instance_method(:updateWhere).bind(self).call(wherekeysAndValues, updatedValues)
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @METHOD_UPDATE, e)
            end
        end
    end
    

    def createTableStatement()
        workFlowData = WorkFlowData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(workFlowData.NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(StoreFrontData.getInstance().NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(DynamicObjectData::NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(workFlowData.DATA).append(@sqlTypeStrings.BLOB_NOT_NULL).append(EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(workFlowData.NAME).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/DynamicObjectData"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/workflow/DbWorkFlowFactory"
require "org/allbinary/logic/control/workflow/WorkFlowData"
require "org/allbinary/logic/control/workflow/WorkFlowInterface"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"

