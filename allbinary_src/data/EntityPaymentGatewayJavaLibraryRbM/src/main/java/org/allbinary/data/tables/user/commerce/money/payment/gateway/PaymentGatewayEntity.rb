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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/money/payment/gateway/PaymentGatewayEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment; module Gateway

class PaymentGatewayEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include PaymentGatewayEntityInterface
    attr_accessor :logUtil, :tableName

    def jfields_org_allbinary_data_tables_user_commerce_money_payment_gateway_PaymentGatewayEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "paymentgateways"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_commerce_money_payment_gateway_PaymentGatewayEntity
        self.setTableName(@tableName)
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
            @logUtil.putF(@commonStrings.CONSTRUCTOR, self, @commonStrings.CONSTRUCTOR)
        end
    end
    

    def add(paymentGatewayInterface)
        begin
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.START, self, "add")
            end
            vector = ::Org::Allbinary::Util::BasicArrayListD.new()
            vector.add(::Org::Allbinary::DataPackage::Generator::PaymentGatewayIdGenerator.new().getNext())
            vector.addAllList(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayEncryptedMapping.new(paymentGatewayInterface).toVector())
            calendar = ::Java::Util::Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            vector.add(time)
            vector.add(time)
            PaymentGatewayEntity.superclass.java_super_method(:insert, 1).bind(self).call(vector)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.END_, self, "add")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "add", e)
            end
        end
    end
    java_overload :add, 1
    

    def update(paymentGatewayInterface)
        begin
            calendar = ::Java::Util::Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            paymentGatewayInterface.setLastModified(time)
            whereKeyValuePairs = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereKeyValuePairs.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME.to_s, paymentGatewayInterface.getStoreName())
            whereKeyValuePairs.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s, paymentGatewayInterface.getName())
            if whereKeyValuePairs.get(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED) != nil
                raise StandardError.new("Don't update TimeCreated for update")
            end
            updateHashMap = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayEncryptedMapping.new(paymentGatewayInterface).toHashMap()
            PaymentGatewayEntity.superclass.java_super_method(:updateWhere, 2).bind(self).call(whereKeyValuePairs, updateHashMap)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "update")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "update", e)
            end
        end
    end
    java_overload :update, 1
    

    def getPaymentGatewayInterface(storeName, paymentType)
        begin
            paymentGatewayHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereKeyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereKeyAndValue.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME.to_s, storeName)
            whereKeyAndValue.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s, paymentType.getName())
            paymentGatewayHashMap = PaymentGatewayEntity.superclass.java_super_method(:getRow, 1).bind(self).call(whereKeyAndValue)
            if paymentGatewayHashMap != nil
                userName = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::UserData::USERNAME.to_s)
                password = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::UserData::PASSWORD.to_s)
                special1 = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL1.to_s)
                special2 = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL2.to_s)
                special3 = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL3.to_s)
                special4 = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL4.to_s)
                special5 = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL5.to_s)
                special6 = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL6.to_s)
                special7 = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL7.to_s)
                special8 = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL8.to_s)
                special9 = paymentGatewayHashMap.get(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL9.to_s)
                superCrypt = ::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::CRYPTNUM)
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::UserData::USERNAME.to_s, superCrypt.decrypt(userName))
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::UserData::PASSWORD.to_s, superCrypt.decrypt(password))
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL1.to_s, superCrypt.decrypt(special1))
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL2.to_s, superCrypt.decrypt(special2))
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL3.to_s, superCrypt.decrypt(special3))
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL4.to_s, superCrypt.decrypt(special4))
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL5.to_s, superCrypt.decrypt(special5))
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL6.to_s, superCrypt.decrypt(special6))
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL7.to_s, superCrypt.decrypt(special7))
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL8.to_s, superCrypt.decrypt(special8))
                paymentGatewayHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL9.to_s, superCrypt.decrypt(special9))
                paymentGatewayInterface = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayInterfaceFactory.new().getInstance(paymentGatewayHashMap)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@commonStrings.SUCCESS, self, "getPaymentGatewayInterface()")
                end
                return paymentGatewayInterface
            else
                return ::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayInterfaceFactory.new().getInstance(paymentType)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put("Command Failed for paymentType: " + paymentType.getName(), self, "getPaymentGatewayInterface", e)
            end
            return nil
        end
    end
    java_overload :getPaymentGatewayInterface, 2
    

    def findPaymentTypeVectorByStore(storeName)
        begin
            paymentGatewayNameVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            paymentGatewayNameVector = PaymentGatewayEntity.superclass.java_super_method(:getColumnWhere, 3).bind(self).call(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s, ::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME.to_s, storeName)
            if paymentGatewayNameVector != nil
                paymentGatewayVector = ::Org::Allbinary::Util::BasicArrayListD.new()
                size = paymentGatewayNameVector.size()
                (0...size).each do |i|
                    paymentTypeString = paymentGatewayNameVector.get(i)
                    paymentType = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Types::BasicPaymentTypeUtil.getInstance().get(paymentTypeString)
                    paymentGatewayVector.add(paymentType)
                end
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@commonStrings.SUCCESS, self, "findPaymentTypeVectorByStore()")
                end
                return paymentGatewayVector
            else
                return ::Org::Allbinary::Util::BasicArrayListD.new()
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "findPaymentTypeVectorByStore", e)
            end
            return nil
        end
    end
    java_overload :findPaymentTypeVectorByStore, 1
    

    def remove(storeName, paymentType)
        begin
            whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereHashMap.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME.to_s, storeName)
            whereHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s, paymentType.getName())
            PaymentGatewayEntity.superclass.java_super_method(:deleteWhere, 1).bind(self).call(whereHashMap)
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
    

    def createTableStatement()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE)
        stringBuffer.append(@tableName)
        stringBuffer.append(@sqlStrings.START)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::ID.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Entry::EntryData.getInstance().ENABLE)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::NAME.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::METHOD)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::MODE.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::TESTPROTOCOL.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::TESTSERVER.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::TESTPORT.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::TESTPATH.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SERVERPROTOCOL.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SERVER.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SERVERPORT.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SERVERPATH.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::UserData::USERNAME)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::UserData::PASSWORD)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::TIMEOUT.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::PROXYPROTOCOL.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::PROXYSERVER.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::PROXYPORT.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::PROXYPATH.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::PROXYUSERNAME.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::PROXYPASSWORD.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::PROXYTIMEOUT.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL1.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL2.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL3.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL4.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL5.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL6.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL7.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL8.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::SPECIAL9.to_s)
        stringBuffer.append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Entry::EntryData.getInstance().LASTMODIFIED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED)
        stringBuffer.append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL)
        stringBuffer.append(@sqlStrings.PRIMARY_KEY)
        stringBuffer.append(::Org::Allbinary::Business::User::Commerce::Money::Payment::Gateway::PaymentGatewayData::ID.to_s)
        stringBuffer.append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return PaymentGatewayEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def dropTable()
        return PaymentGatewayEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
end

module ::Java; module Util; autoload :Calendar, "java/util/Calendar" unless const_defined?(:Calendar, false); end; end
module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData" unless const_defined?(:PaymentData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayData, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayData" unless const_defined?(:PaymentGatewayData, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayEncryptedMapping, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayEncryptedMapping" unless const_defined?(:PaymentGatewayEncryptedMapping, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayInterface, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterface" unless const_defined?(:PaymentGatewayInterface, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Gateway; autoload :PaymentGatewayInterfaceFactory, "org/allbinary/business/user/commerce/money/payment/gateway/PaymentGatewayInterfaceFactory" unless const_defined?(:PaymentGatewayInterfaceFactory, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :BasicPaymentType, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentType" unless const_defined?(:BasicPaymentType, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; module Types; autoload :BasicPaymentTypeUtil, "org/allbinary/business/user/commerce/money/payment/types/BasicPaymentTypeUtil" unless const_defined?(:BasicPaymentTypeUtil, false); end; end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Generator; autoload :PaymentGatewayIdGenerator, "org/allbinary/data/generator/PaymentGatewayIdGenerator" unless const_defined?(:PaymentGatewayIdGenerator, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; autoload :SuperCrypt, "org/allbinary/logic/control/crypt/SuperCrypt" unless const_defined?(:SuperCrypt, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end; end

