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

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionResultEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Transaction

class TransactionResultEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include TransactionResultEntityInterface
    attr_accessor :logUtil, :tableName

    def jfields_org_allbinary_data_tables_user_commerce_money_payment_transaction_TransactionResultEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "vresults"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_commerce_money_payment_transaction_TransactionResultEntity
        self.setTableName(@tableName)
    end
    

    def remove(userName, orderNumber)
        begin
            whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, orderNumber)
            whereHashMap.put(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
            TransactionResultEntity.superclass.java_super_method(:deleteWhere, 1).bind(self).call(whereHashMap)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "remove")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "remove", e)
            end
        end
    end
    java_overload :remove, 2
    

    def add(userName, orderNumber, transactionResultInterface)
        begin
            values = ::Org::Allbinary::Util::BasicArrayListD.new()
            values.add(orderNumber)
            values.add(userName)
            values.addAllList(transactionResultInterface.getValues())
            calendar = ::Java::Util::Calendar.getInstance()
            time = calendar.getTimeInMillis().to_s
            values.add(time)
            values.add(time)
            TransactionResultEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "add")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "add", e)
            end
        end
    end
    java_overload :add, 3
    

    def getTransactionResultInterface(orderNumber)
        begin
            resultHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            updateKeyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            updateKeyAndValue.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, orderNumber)
            resultHashMap = TransactionResultEntity.superclass.java_super_method(:getRow, 1).bind(self).call(updateKeyAndValue)
            if resultHashMap != nil
                transactionResult = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::Transaction::TransactionResult.new(resultHashMap)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@commonStrings.SUCCESS, self, "getTransactionResultInterface")
                end
                return transactionResult
            else
                return nil
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "getTransactionResultInterface", e)
            end
            return nil
        end
    end
    java_overload :getTransactionResultInterface, 1
    

    def createTableStatement()
        paymentTransactionKeysFactory = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::Transaction::PaymentTransactionKeysFactory.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::UserData::USERNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.RESULT.to_s).append(@sqlTypeStrings.MAX_INT_NOT_NULL).append(paymentTransactionKeysFactory.PNREF.to_s).append(@sqlTypeStrings.TWELVE_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.RESPMSG.to_s).append(@sqlTypeStrings.BLOB_NOT_NULL).append(paymentTransactionKeysFactory.AUTHCODE.to_s).append(@sqlTypeStrings.SIX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.AVSADDR.to_s).append(@sqlTypeStrings.ONE_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.AVSZIP.to_s).append(@sqlTypeStrings.ONE_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.ORIGRESULT.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.STATUS.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.FRAUDCODE.to_s).append(@sqlTypeStrings.TWO_INT_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.FRAUDMSG.to_s).append(@sqlTypeStrings.MAX_INT_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.ERRCODE.to_s).append(@sqlTypeStrings.MAX_INT_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.SCORE.to_s).append(@sqlTypeStrings.THREE_INT_NOT_NULL)
        stringBuffer.append(paymentTransactionKeysFactory.REASON1.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.REASON2.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.REASON3.to_s)
        stringBuffer.append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION1.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION2.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION3.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION4.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION5.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION6.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(paymentTransactionKeysFactory.EXCEPTION7.to_s).append(@sqlTypeStrings.FOUR_INT_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return TransactionResultEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def dropTable()
        return TransactionResultEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Inventory; module Order; autoload :OrderData, "org/allbinary/business/user/commerce/inventory/order/OrderData" unless const_defined?(:OrderData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction; autoload :PaymentTransactionKeysFactory, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionKeysFactory" unless const_defined?(:PaymentTransactionKeysFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction; autoload :TransactionResult, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/TransactionResult" unless const_defined?(:TransactionResult, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction; autoload :TransactionResultInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/TransactionResultInterface" unless const_defined?(:TransactionResultInterface, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

