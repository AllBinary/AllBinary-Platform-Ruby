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
# package org.allbinary.data.tables.user.commerce.money.payment

# require "java/util/Random"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/money/payment/PaymentEntityInterface"

class PaymentEntity < AbSqlBean
    include PaymentEntityInterface
    attr_accessor :logUtil, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "payment"
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def getLastId(userName)
        return self.class.superclass.instance_method(:getLargestIntegerInColumnWhere).bind(self).call(PaymentData::ID, UserData::USERNAME, userName)
    end
    

    def setDefault(userName, index)
        begin
            updateKeyAndValue = StdUtil.getInstance().createHashMap()
            whereKeyAndValue = StdUtil.getInstance().createHashMap()
            whereKeyAndValue.put(UserData::USERNAME, userName)
            paymentInterface = self.getDefault(userName)
            if paymentInterface != nil
                updateKeyAndValue.put(EntryData.getInstance().DEFAULT, StringUtil.getInstance().EMPTY_STRING)
                whereKeyAndValue.put(PaymentData::ID, paymentInterface.getId())
                self.class.superclass.instance_method(:updateWhere).bind(self).call(whereKeyAndValue, updateKeyAndValue)
            end
            updateKeyAndValue.put(EntryData.getInstance().DEFAULT, EntryData.getInstance().DEFAULT)
            whereKeyAndValue.put(PaymentData::ID, index.to_s)
            self.class.superclass.instance_method(:updateWhere).bind(self).call(whereKeyAndValue, updateKeyAndValue)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "setDefault")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "setDefault", e)
            end
        end
    end
    

    def get(userName)
        begin
            paymentVector = BasicArrayListD.new()
            keyAndValue = StdUtil.getInstance().createHashMap()
            keyAndValue.put(UserData::USERNAME, userName)
            paymentList = self.class.superclass.instance_method(:getRows).bind(self).call(keyAndValue)
            size = paymentList.size()
            (0...size).each do |index|
                paymentHashMap = paymentList.get(index)
                payment = Payment.new(paymentHashMap)
                if payment != nil
                    paymentVector.add(payment)
                end
            end
            return paymentVector
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
    end
    

    def getDefault(userName)
        begin
            paymentHashMap = StdUtil.getInstance().createHashMap()
            updateKeyAndValue = StdUtil.getInstance().createHashMap()
            updateKeyAndValue.put(EntryData.getInstance().DEFAULT, EntryData.getInstance().DEFAULT)
            updateKeyAndValue.put(UserData::USERNAME, userName)
            paymentHashMap = self.class.superclass.instance_method(:getRow).bind(self).call(updateKeyAndValue)
            if paymentHashMap != nil
                payment = Payment.new(paymentHashMap)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@commonStrings.SUCCESS, self, "getDefault")
                end
                return payment
            else
                return nil
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "getDefault", e)
            end
            return nil
        end
    end
    

    def remove(userName, index)
        begin
            whereHashMap = StdUtil.getInstance().createHashMap()
            whereHashMap.put(UserData::USERNAME, userName)
            whereHashMap.put(PaymentData::ID, index.to_s)
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
    

    def add(userName, paymentInterface)
        begin
            vector = BasicArrayListD.new()
            vector.add(PaymentIdGenerator.new().getNext())
            vector.add(userName)
            vector.add(StringUtil.getInstance().EMPTY_STRING)
            vector.add(paymentInterface.getName())
            vector.add(paymentInterface.getType())
            vector.add(paymentInterface.getExpiration())
            random = Random.new().nextInt(SuperCrypt::KEYMAX)
            vector.add(SuperCrypt.new(random).encrypt(paymentInterface.getNumber()))
            vector.add(random.to_s)
            calendar = Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            vector.add(time)
            self.class.superclass.instance_method(:insert).bind(self).call(vector)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "add")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "add", e)
            end
        end
    end
    

    def createTableStatement()
        entryData = EntryData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(PaymentData::ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL).append(UserData::USERNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(entryData.DEFAULT).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(PaymentData::NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(PaymentData::TYPE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(PaymentData::EXPIRATION).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(PaymentData::NUMBER).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(entryData.ENCRYPTION).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData.TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(PaymentData::ID).append(@sqlStrings.END_)
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
require "org/allbinary/business/user/commerce/money/payment/Payment"
require "org/allbinary/business/user/commerce/money/payment/PaymentData"
require "org/allbinary/business/user/commerce/money/payment/PaymentInterface"
require "org/allbinary/data/generator/PaymentIdGenerator"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/SuperCrypt"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"

