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
# package org.allbinary.data.tables.user.commerce.money.payment.gateway

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityInterface"

class PaymentGatewayEntity < AbSqlBean
    include PaymentGatewayEntityInterface
    attr_accessor :logUtil, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "paymentgateways"
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def add(paymentGatewayInterface)
        begin
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.START, self, "add")
            end
            vector = BasicArrayListD.new()
            vector.add(PaymentGatewayIdGenerator.new().getNext())
            vector.addAllList(PaymentGatewayEncryptedMapping.new(paymentGatewayInterface).toVector())
            calendar = Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            vector.add(time)
            vector.add(time)
            self.class.superclass.instance_method(:insert).bind(self).call(vector)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.END_, self, "add")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "add", e)
            end
        end
    end
    

    def update(paymentGatewayInterface)
        begin
            calendar = Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            paymentGatewayInterface.setLastModified(time)
            whereKeyValuePairs = StdUtil.getInstance().createHashMap()
            whereKeyValuePairs.put(StoreFrontData.getInstance().NAME.to_s, paymentGatewayInterface.getStoreName())
            whereKeyValuePairs.put(PaymentGatewayData::NAME.to_s, paymentGatewayInterface.getName())
            if whereKeyValuePairs.get(EntryData.getInstance().TIMECREATED) != nil
                raise StandardError.new("Don't update TimeCreated for update")
            end
            updateHashMap = PaymentGatewayEncryptedMapping.new(paymentGatewayInterface).toHashMap()
            self.class.superclass.instance_method(:updateWhere).bind(self).call(whereKeyValuePairs, updateHashMap)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "update")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "update", e)
            end
        end
    end
    

    def getPaymentGatewayInterface(storeName, paymentType)
        begin
            paymentGatewayHashMap = StdUtil.getInstance().createHashMap()
            whereKeyAndValue = StdUtil.getInstance().createHashMap()
            whereKeyAndValue.put(StoreFrontData.getInstance().NAME.to_s, storeName)
            whereKeyAndValue.put(PaymentGatewayData::NAME.to_s, paymentType.getName())
            paymentGatewayHashMap = self.class.superclass.instance_method(:getRow).bind(self).call(whereKeyAndValue)
            if paymentGatewayHashMap != nil
                userName = paymentGatewayHashMap.get(UserData::USERNAME.to_s)
                password = paymentGatewayHashMap.get(UserData::PASSWORD.to_s)
                special1 = paymentGatewayHashMap.get(PaymentGatewayData::SPECIAL1.to_s)
                special2 = paymentGatewayHashMap.get(PaymentGatewayData::SPECIAL2.to_s)
                special3 = paymentGatewayHashMap.get(PaymentGatewayData::SPECIAL3.to_s)
                special4 = paymentGatewayHashMap.get(PaymentGatewayData::SPECIAL4.to_s)
                special5 = paymentGatewayHashMap.get(PaymentGatewayData::SPECIAL5.to_s)
                special6 = paymentGatewayHashMap.get(PaymentGatewayData::SPECIAL6.to_s)
                special7 = paymentGatewayHashMap.get(PaymentGatewayData::SPECIAL7.to_s)
                special8 = paymentGatewayHashMap.get(PaymentGatewayData::SPECIAL8.to_s)
                special9 = paymentGatewayHashMap.get(PaymentGatewayData::SPECIAL9.to_s)
                superCrypt = SuperCrypt.new(PaymentGatewayData::CRYPTNUM)
                paymentGatewayHashMap.put(UserData::USERNAME.to_s, superCrypt.decrypt(userName))
                paymentGatewayHashMap.put(UserData::PASSWORD.to_s, superCrypt.decrypt(password))
                paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL1.to_s, superCrypt.decrypt(special1))
                paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL2.to_s, superCrypt.decrypt(special2))
                paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL3.to_s, superCrypt.decrypt(special3))
                paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL4.to_s, superCrypt.decrypt(special4))
                paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL5.to_s, superCrypt.decrypt(special5))
                paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL6.to_s, superCrypt.decrypt(special6))
                paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL7.to_s, superCrypt.decrypt(special7))
                paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL8.to_s, superCrypt.decrypt(special8))
                paymentGatewayHashMap.put(PaymentGatewayData::SPECIAL9.to_s, superCrypt.decrypt(special9))
                paymentGatewayInterface = PaymentGatewayInterfaceFactory.new().getInstance(paymentGatewayHashMap)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@commonStrings.SUCCESS, self, "getPaymentGatewayInterface()")
                end
                return paymentGatewayInterface
            else
                return PaymentGatewayInterfaceFactory.new().getInstance(paymentType)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put("Command Failed for paymentType: " + paymentType.getName(), self, "getPaymentGatewayInterface", e)
            end
            return nil
        end
    end
    

    def findPaymentTypeVectorByStore(storeName)
        begin
            paymentGatewayNameVector = BasicArrayListD.new()
            paymentGatewayNameVector = self.class.superclass.instance_method(:getColumnWhere).bind(self).call(PaymentGatewayData::NAME.to_s, StoreFrontData.getInstance().NAME.to_s, storeName)
            if paymentGatewayNameVector != nil
                paymentGatewayVector = BasicArrayListD.new()
                size = paymentGatewayNameVector.size()
                (0...size).each do |i|
                    paymentTypeString = paymentGatewayNameVector.get(i)
                    paymentType = BasicPaymentTypeUtil.getInstance().get(paymentTypeString)
                    paymentGatewayVector.add(paymentType)
                end
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@commonStrings.SUCCESS, self, "findPaymentTypeVectorByStore()")
                end
                return paymentGatewayVector
            else
                return BasicArrayListD.new()
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "findPaymentTypeVectorByStore", e)
            end
            return nil
        end
    end
    

    def remove(storeName, paymentType)
        begin
            whereHashMap = StdUtil.getInstance().createHashMap()
            whereHashMap.put(StoreFrontData.getInstance().NAME.to_s, storeName)
            whereHashMap.put(PaymentGatewayData::NAME.to_s, paymentType.getName())
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
    

    def createTableStatement()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(PaymentGatewayData::ID.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL)
        stringBuffer.append(EntryData.getInstance().ENABLE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(StoreFrontData.getInstance().NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::NAME.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentData::METHOD)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::MODE.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::TESTPROTOCOL.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::TESTSERVER.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::TESTPORT.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::TESTPATH.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SERVERPROTOCOL.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SERVER.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SERVERPORT.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SERVERPATH.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(UserData::USERNAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(UserData::PASSWORD)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::TIMEOUT.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::PROXYPROTOCOL.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::PROXYSERVER.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::PROXYPORT.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::PROXYPATH.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::PROXYUSERNAME.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::PROXYPASSWORD.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::PROXYTIMEOUT.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SPECIAL1.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SPECIAL2.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SPECIAL3.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SPECIAL4.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SPECIAL5.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SPECIAL6.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SPECIAL7.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SPECIAL8.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(PaymentGatewayData::SPECIAL9.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(EntryData.getInstance().LASTMODIFIED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(EntryData.getInstance().TIMECREATED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@sqlStrings.PRIMARY_KEY)
        stringBuffer.append(PaymentGatewayData::ID.to_s)
        stringBuffer.append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
    

    def dropTable()
        return super()
    end
end

require "java/util/Calendar"
require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/commerce/money/payment/PaymentData"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayEncryptedMapping"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface"
require "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactory"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType"
require "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil"
require "org/allbinary/data/generator/PaymentGatewayIdGenerator"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/SuperCrypt"
require "org/allbinary/logic/string/StringMaker"

