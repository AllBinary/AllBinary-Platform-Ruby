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
# package org.allbinary.data.tables.user.address

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/address/StreetAddressesEntityInterface"

class StreetAddressesEntity < AbSqlBean
    include StreetAddressesEntityInterface
    attr_accessor :logUtil, :userName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @userName = nil
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        method(:initialize).super_method.call(UserDbInitInfo.new())
        initialize_fields
    end
    

    def constructor1(userName)
        method(:initialize).super_method.call(UserDbInitInfo.new())
        initialize_fields
        @userName = userName
    end
    

    def remove(index)
        begin
            whereHashMap = StdUtil.getInstance().createHashMap()
            whereHashMap.put(UserData::USERNAME, @userName)
            whereHashMap.put(StreetAddressData::ID, index.to_s)
            self.class.superclass.instance_method(:deleteWhere).bind(self).call(whereHashMap)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "remove")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "remove", e)
            end
        end
    end
    

    def add(address)
        self.add(address, TableDataFactory.getInstance().INTEGER_MAX_VALUE_STRING)
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def add(address, index)
        begin
            values = BasicArrayListD.new()
            values.add(index)
            values.add(@userName)
            values.add(StringUtil.getInstance().EMPTY_STRING)
            values.add(address.getName())
            values.add(address.getStreet())
            values.add(address.getCity())
            values.add(address.getState())
            values.add(address.getCode())
            values.add(address.getCountry())
            calendar = Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            values.add(time)
            self.class.superclass.instance_method(:insert).bind(self).call(values)
            self.setDefault(getLastId())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "add")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "add", e)
            end
        end
    end
    

    def update(address)
        begin
            addressHashMap = address.toHashMap()
            whereKeyValuePairs = StdUtil.getInstance().createHashMap()
            whereKeyValuePairs.put(StreetAddressData::ID, address.getId())
            whereKeyValuePairs.put(UserData::USERNAME, @userName)
            self.class.superclass.instance_method(:updateWhere).bind(self).call(whereKeyValuePairs, addressHashMap)
            self.setDefault(address.getId())
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "update")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "add", e)
            end
        end
    end
    

    def getLastId()
        return self.class.superclass.instance_method(:getLargestIntegerInColumnWhere).bind(self).call(StreetAddressData::ID, UserData::USERNAME, @userName)
    end
    

    def get()
        begin
            streetAddressVector = BasicArrayListD.new()
            keyAndValue = StdUtil.getInstance().createHashMap()
            keyAndValue.put(UserData::USERNAME, @userName)
            addressList = self.class.superclass.instance_method(:getRows).bind(self).call(keyAndValue)
            size = addressList.size()
            (0...size).each do |index|
                addressHashMap = addressList.get(index)
                streetAddress = StreetAddress.new(addressHashMap)
                if streetAddress != nil
                    streetAddressVector.add(streetAddress)
                end
            end
            return streetAddressVector
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def get(index)
        begin
            keyAndValue = StdUtil.getInstance().createHashMap()
            keyAndValue.put(UserData::USERNAME, @userName)
            keyAndValue.put(StreetAddressData::ID, index.to_s)
            addressHashMap = self.class.superclass.instance_method(:getRow).bind(self).call(keyAndValue)
            if addressHashMap != nil
                return StreetAddress.new(addressHashMap)
            else
                return nil
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
    end
    

    def getDefault()
        begin
            addressHashMap = StdUtil.getInstance().createHashMap()
            updateKeyAndValue = StdUtil.getInstance().createHashMap()
            updateKeyAndValue.put(StreetAddressData::DEFAULT, StreetAddressData::DEFAULT)
            updateKeyAndValue.put(UserData::USERNAME, @userName)
            addressHashMap = self.class.superclass.instance_method(:getRow).bind(self).call(updateKeyAndValue)
            if addressHashMap != nil
                streetAddress = StreetAddress.new(addressHashMap)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@commonStrings.SUCCESS, self, "getDefault")
                end
                return streetAddress
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF("No Default Address Found", self, "getDefault")
                end
                return nil
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "getDefault", e)
            end
            return nil
        end
    end
    

    def setDefault(value)
        begin
            updateKeyAndValue = StdUtil.getInstance().createHashMap()
            whereKeyAndValue = StdUtil.getInstance().createHashMap()
            whereKeyAndValue.put(UserData::USERNAME, @userName)
            streetAddress = self.getDefault()
            if streetAddress != nil
                updateKeyAndValue.put(StreetAddressData::DEFAULT, StringUtil.getInstance().EMPTY_STRING)
                whereKeyAndValue.put(StreetAddressData::ID, streetAddress.getId())
                self.class.superclass.instance_method(:updateWhere).bind(self).call(whereKeyAndValue, updateKeyAndValue)
            end
            whereKeyAndValue.put(StreetAddressData::ID, value)
            updateKeyAndValue.put(StreetAddressData::DEFAULT, StreetAddressData::DEFAULT)
            self.class.superclass.instance_method(:updateWhere).bind(self).call(whereKeyAndValue, updateKeyAndValue)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "setDefault")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "setShippingAddress", e)
            end
        end
    end
    

    def getUserName()
        return @userName
    end
    

    def createTableStatement()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(self.getTableName()).append(@sqlStrings.START).append(StreetAddressData::ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL).append(UserData::USERNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(StreetAddressData::DEFAULT).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(StreetAddressData::NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(StreetAddressData::STREET).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(StreetAddressData::CITY).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(StreetAddressData::STATE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(StreetAddressData::CODE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(StreetAddressData::COUNTRY).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(StreetAddressData::ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
    

    def drop()
        return self.class.superclass.instance_method(:dropTable).bind(self).call()
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/address/StreetAddress"
require "org/allbinary/business/user/address/StreetAddressData"
require "org/allbinary/data/tables/TableDataFactory"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

