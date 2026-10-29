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
# package org.allbinary.data.tables.user.commerce.money.payment.transaction

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionResultEntityInterface"

class TransactionResultEntity < AbSqlBean
    include TransactionResultEntityInterface
    attr_accessor :logUtil, :tableName

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "vresults"
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def remove(userName, orderNumber)
        begin
            whereHashMap = StdUtil.getInstance().createHashMap()
            whereHashMap.put(OrderData::ID, orderNumber)
            whereHashMap.put(UserData::USERNAME, userName)
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
    

    def add(userName, orderNumber, transactionResultInterface)
        begin
            values = BasicArrayListD.new()
            values.add(orderNumber)
            values.add(userName)
            values.addAllList(transactionResultInterface.getValues())
            calendar = Calendar.getInstance()
            time = calendar.getTimeInMillis().to_s
            values.add(time)
            values.add(time)
            self.class.superclass.instance_method(:insert).bind(self).call(values)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "add")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "add", e)
            end
        end
    end
    

    def getTransactionResultInterface(orderNumber)
        begin
            resultHashMap = StdUtil.getInstance().createHashMap()
            updateKeyAndValue = StdUtil.getInstance().createHashMap()
            updateKeyAndValue.put(OrderData::ID, orderNumber)
            resultHashMap = self.class.superclass.instance_method(:getRow).bind(self).call(updateKeyAndValue)
            if resultHashMap != nil
                transactionResult = TransactionResult.new(resultHashMap)
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@commonStrings.SUCCESS, self, "getTransactionResultInterface")
                end
                return transactionResult
            else
                return nil
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "getTransactionResultInterface", e)
            end
            return nil
        end
    end
    

    def createTableStatement()
        paymentTransactionKeysFactory = PaymentTransactionKeysFactory.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(OrderData::ID).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(UserData::USERNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.RESULT.to_s).append(@sqlTypeStrings.MAX_INT_NOT_NULL).append(paymentTransactionKeysFactory.PNREF.to_s).append(@sqlTypeStrings.TWELVE_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.RESPMSG.to_s).append(@sqlTypeStrings.BLOB_NOT_NULL).append(paymentTransactionKeysFactory.AUTHCODE.to_s).append(@sqlTypeStrings.SIX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.AVSADDR.to_s).append(@sqlTypeStrings.ONE_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.AVSZIP.to_s).append(@sqlTypeStrings.ONE_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.ORIGRESULT.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.STATUS.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.FRAUDCODE.to_s).append(@sqlTypeStrings.TWO_INT_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.FRAUDMSG.to_s).append(@sqlTypeStrings.MAX_INT_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.ERRCODE.to_s).append(@sqlTypeStrings.MAX_INT_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.SCORE.to_s).append(@sqlTypeStrings.THREE_INT_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.REASON1.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.REASON2.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.REASON3.to_s)
        stringBuffer.append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION1.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION2.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION3.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION4.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION5.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION6.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION7.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(OrderData::ID).append(@sqlStrings.END_)
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
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/commerce/inventory/order/OrderData"
require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionKeysFactory"
require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/TransactionResult"
require "org/allbinary/business/user/commerce/money/payment/gateway/transaction/TransactionResultInterface"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

