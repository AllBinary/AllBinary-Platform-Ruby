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
require "org/allbinary/data/tables/user/commerce/money/payment/transaction/TransactionEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Transaction

class TransactionEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include TransactionEntityInterface
    attr_accessor :logUtil, :tableName

    def jfields_org_allbinary_data_tables_user_commerce_money_payment_transaction_TransactionEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "vtrans"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_commerce_money_payment_transaction_TransactionEntity
        self.setTableName(@tableName)
    end
    

    def remove(userName, orderNumber)
        begin
            whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereHashMap.put(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID, orderNumber)
            whereHashMap.put(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
            TransactionEntity.superclass.java_super_method(:deleteWhere, 1).bind(self).call(whereHashMap)
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
    

    def add(userName, orderNumber, paymentTransactionInterface)
        begin
            values = ::Org::Allbinary::Util::BasicArrayListD.new()
            values.add(orderNumber)
            values.add(userName)
            values.addAllList(paymentTransactionInterface.toVector())
            calendar = ::Java::Util::Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            values.add(time)
            values.add(time)
            TransactionEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
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
    

    def createTableStatement()
        paymentTransactionKeysFactory = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::Transaction::PaymentTransactionKeysFactory.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::UserData::USERNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.TRXTYPE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.TENDER.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.ACCT.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.EXPDATE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.AMT.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.AUTHCODE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.MICR.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.CHECKNUM.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.NAME.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.STREET.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.CITY.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.STATE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.ZIP.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.DL.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.EMAIL.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.COMMENT1.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.COMMENT2.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.ORIGID.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.PONUM.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.DESC.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.DESC1TO4.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.INVNUM.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SHIPTOZIP.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SWIPE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.TAXAMT.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.COMMCARD.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.DUTYAMT.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.FREIGHTAMT.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.ORDERDATE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.TAXEXEMPT.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.COUNTRYCODE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.CUSTCODE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.CVV2.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.ABA.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.ACCTTYPE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.DISCOUNT.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.FIRSTNAME.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.LASTNAME.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SHIPFROMZIP.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.PRENOTE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.CHKTYPE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.DOB.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.PHONENUM.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SS.to_s).append(" VARCHAR(30) NOT NULL,").append(paymentTransactionKeysFactory.COMPANYNAME.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.COUNTRY.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SHIPTOCITY.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SHIPTOFIRSTNAME.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SHIPTOLASTNAME.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SHIPTOSTATE.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SHIPTOSTREET.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SPECIAL1.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SPECIAL2.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(paymentTransactionKeysFactory.SPECIAL3.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(::Org::Allbinary::Business::User::Commerce::Inventory::Order::OrderData::ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return TransactionEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def dropTable()
        return TransactionEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
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
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction; autoload :PaymentTransactionInterface, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionInterface" unless const_defined?(:PaymentTransactionInterface, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; module Transaction; autoload :PaymentTransactionKeysFactory, "org/allbinary/business/user/commerce/money/payment/gateway/transaction/PaymentTransactionKeysFactory" unless const_defined?(:PaymentTransactionKeysFactory, false); end; end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

