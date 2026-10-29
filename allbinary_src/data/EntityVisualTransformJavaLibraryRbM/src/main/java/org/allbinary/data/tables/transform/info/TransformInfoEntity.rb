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
# package org.allbinary.data.tables.transform.info

# require "javax/servlet/jsp/PageContext"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/transform/info/TransformInfoEntityInterface"

class TransformInfoEntity < AbSqlBean
    include TransformInfoEntityInterface
    attr_accessor :logUtil, :tableName, :abeClientInformation, :transformInfoFactoryInterface, :transformInfoObjectConfigAndManipulatorFactoryInterface, :transformInfoObjectConfigGeneratorFactoryInterface

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "transforminfo"
        @abeClientInformation = ServiceClientInformationInterfaceFactory.getInstance()
        @transformInfoFactoryInterface = nil
        @transformInfoObjectConfigAndManipulatorFactoryInterface = nil
        @transformInfoObjectConfigGeneratorFactoryInterface = nil
    end
    

    def initialize(transformInfoObjectConfigGeneratorFactoryInterface, transformInfoObjectConfigAndManipulatorFactoryInterface, transformInfoFactoryInterface)
        super(UserDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
        @transformInfoObjectConfigGeneratorFactoryInterface = transformInfoObjectConfigGeneratorFactoryInterface
        @transformInfoObjectConfigAndManipulatorFactoryInterface = transformInfoObjectConfigAndManipulatorFactoryInterface
        @transformInfoFactoryInterface = transformInfoFactoryInterface
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
    

    def delete(value)
        begin
            self.class.superclass.instance_method(:deleteWhere).bind(self).call(TransformInfoData.getInstance().NAME, value)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, @commonStrings.delete)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.delete, e)
            end
        end
    end
    

    # throws Exception
    def get(name, propertiesHashMap, pageContext)
        transformInfoData = TransformInfoData.getInstance()
        keysAndValues = StdUtil.getInstance().createHashMap()
        keysAndValues.put(transformInfoData.NAME, name)
        hashMap = self.class.superclass.instance_method(:getRow).bind(self).call(keysAndValues)
        if hashMap != nil
            anyType = hashMap.get(transformInfoData.OBJECTCONFIG)
            if anyType != nil
                string = anyType
                hashMap.put(transformInfoData.OBJECTCONFIG, String.new(Encoder.decode(string)))
            end
            objectData = hashMap.get(transformInfoData.DATA)
            if objectData != nil
                string = objectData
                hashMap.put(transformInfoData.DATA, String.new(Encoder.decode(string)))
            end
            return @transformInfoFactoryInterface.getInstance(hashMap, propertiesHashMap, pageContext)
        else
            return nil
        end
    end
    

    # throws Exception
    def getObjectConfigs(storeName)
        objectConfigVector = BasicArrayListD.new()
        objectConfigColumnVector = self.getColumnWhere(TransformInfoData.getInstance().OBJECTCONFIG, StoreFrontData.getInstance().NAME, storeName)
        size = objectConfigColumnVector.size()
        (0...size).each do |i|
            objectConfigString = objectConfigColumnVector.get(i)
            objectConfigString = String.new(Encoder.decode(objectConfigString))
            objectConfigVector.add(@transformInfoObjectConfigAndManipulatorFactoryInterface.getInstance(@abeClientInformation, self, DomDocumentHelper.create(objectConfigString)))
        end
        return objectConfigVector
    end
    

    # throws Exception
    def getNames(storeName)
        viewNameVector = BasicArrayListD.new()
        columnVector = self.getColumnWhere(TransformInfoData.getInstance().NAME, StoreFrontData.getInstance().NAME, storeName)
        size = columnVector.size()
        (0...size).each do |i|
            viewNameString = columnVector.get(i)
            viewNameVector.add(viewNameString)
        end
        return viewNameVector
    end
    

    def createTableStatement()
        transformInfoData = TransformInfoData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(transformInfoData.NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(StoreFrontData.getInstance().NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(transformInfoData.OBJECTFILENAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(transformInfoData.OBJECT)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(transformInfoData.OBJECTCONFIGFILENAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(transformInfoData.OBJECTCONFIG)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(transformInfoData.TEMPLATEFILENAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(transformInfoData.TEMPLATE)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(transformInfoData.DATAFILENAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(transformInfoData.DATA)
        stringBuffer.append(@sqlTypeStrings.BLOB_NOT_NULL)
        stringBuffer.append(EntryData.getInstance().LASTMODIFIED)
        stringBuffer.append(EntryData.getInstance().TIMECREATED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@sqlStrings.PRIMARY_KEY)
        stringBuffer.append(transformInfoData.NAME)
        stringBuffer.append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
    

    def update(updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(TransformInfoData.getInstance().NAME, updatedValues.get(TransformInfoData.getInstance().NAME), updatedValues)
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/data/tree/dom/document/DomDocumentHelper"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/Encoder"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/ServiceClientInformationInterfaceFactory"
require "org/allbinary/logic/visual/transform/info/TransformInfoData"
require "org/allbinary/logic/visual/transform/info/TransformInfoFactoryInterface"
require "org/allbinary/logic/visual/transform/info/TransformInfoInterface"
require "org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigAndManipulatorFactoryBase"
require "org/allbinary/logic/visual/transform/info/objectConfig/generator/TransformInfoObjectConfigGeneratorFactoryInterface"

