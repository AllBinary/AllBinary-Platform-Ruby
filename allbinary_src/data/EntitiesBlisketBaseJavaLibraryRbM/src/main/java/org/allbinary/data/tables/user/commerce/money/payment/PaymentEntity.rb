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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
# require "java/util/Random"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/commerce/money/payment/PaymentEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Commerce; module Money; module Payment

class PaymentEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include PaymentEntityInterface
    attr_accessor :logUtil, :tableName

    def jfields_org_allbinary_data_tables_user_commerce_money_payment_PaymentEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "payment"
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_commerce_money_payment_PaymentEntity
        self.setTableName(@tableName)
    end
    

    def getLastId(userName)
        return PaymentEntity.superclass.java_super_method(:getLargestIntegerInColumnWhere, 3).bind(self).call(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::ID, ::Org::Allbinary::Business::User::UserData::USERNAME, userName)
    end
    java_overload :getLastId, 1
    

    def setDefault(userName, index)
        begin
            updateKeyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereKeyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereKeyAndValue.put(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
            paymentInterface = self.getDefault(userName)
            if paymentInterface != nil
                updateKeyAndValue.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
                whereKeyAndValue.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::ID, paymentInterface.getId())
                PaymentEntity.superclass.java_super_method(:updateWhere, 2).bind(self).call(whereKeyAndValue, updateKeyAndValue)
            end
            updateKeyAndValue.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT, ::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT)
            whereKeyAndValue.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::ID, index.to_s)
            PaymentEntity.superclass.java_super_method(:updateWhere, 2).bind(self).call(whereKeyAndValue, updateKeyAndValue)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "setDefault")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "setDefault", e)
            end
        end
    end
    java_overload :setDefault, 2
    

    def get(userName)
        begin
            paymentVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            keyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            keyAndValue.put(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
            paymentList = PaymentEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keyAndValue)
            size = paymentList.size()
            (0...size).each do |index|
                paymentHashMap = paymentList.get(index)
                payment = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Payment.new(paymentHashMap)
                if payment != nil
                    paymentVector.add(payment)
                end
            end
            return paymentVector
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
    end
    java_overload :get, 1
    

    def getDefault(userName)
        begin
            paymentHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            updateKeyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            updateKeyAndValue.put(::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT, ::Org::Allbinary::Business::Entry::EntryData.getInstance().DEFAULT)
            updateKeyAndValue.put(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
            paymentHashMap = PaymentEntity.superclass.java_super_method(:getRow, 1).bind(self).call(updateKeyAndValue)
            if paymentHashMap != nil
                payment = ::Org::Allbinary::Business::User::Commerce::Money::Payment::Payment.new(paymentHashMap)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@commonStrings.SUCCESS, self, "getDefault")
                end
                return payment
            else
                return nil
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "getDefault", e)
            end
            return nil
        end
    end
    java_overload :getDefault, 1
    

    def remove(userName, index)
        begin
            whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereHashMap.put(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
            whereHashMap.put(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::ID, index.to_s)
            PaymentEntity.superclass.java_super_method(:deleteWhere, 1).bind(self).call(whereHashMap)
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
    

    def add(userName, paymentInterface)
        begin
            vector = ::Org::Allbinary::Util::BasicArrayListD.new()
            vector.add(::Org::Allbinary::DataPackage::Generator::PaymentIdGenerator.new().getNext())
            vector.add(userName)
            vector.add(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            vector.add(paymentInterface.getName())
            vector.add(paymentInterface.getType())
            vector.add(paymentInterface.getExpiration())
            random = Random.new().nextInt(::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt::KEYMAX)
            vector.add(::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(random).encrypt(paymentInterface.getNumber()))
            vector.add(random.to_s)
            calendar = ::Java::Util::Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            vector.add(time)
            PaymentEntity.superclass.java_super_method(:insert, 1).bind(self).call(vector)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "add")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "add", e)
            end
        end
    end
    java_overload :add, 2
    

    def createTableStatement()
        entryData = ::Org::Allbinary::Business::Entry::EntryData.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL).append(::Org::Allbinary::Business::User::UserData::USERNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(entryData.DEFAULT).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::TYPE).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::EXPIRATION).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::NUMBER).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(entryData.ENCRYPTION).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData.TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(::Org::Allbinary::Business::User::Commerce::Money::Payment::PaymentData::ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return PaymentEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def drop()
        return PaymentEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :drop, 0
    

    def insert(values)
        PaymentEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
    end
    java_overload :insert, 1
    

    def dropTable()
        return PaymentEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
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
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :Payment, "org/allbinary/business/user/commerce/money/payment/Payment" unless const_defined?(:Payment, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentData, "org/allbinary/business/user/commerce/money/payment/PaymentData" unless const_defined?(:PaymentData, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Commerce; module Money; module Payment; autoload :PaymentInterface, "org/allbinary/business/user/commerce/money/payment/PaymentInterface" unless const_defined?(:PaymentInterface, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Generator; autoload :PaymentIdGenerator, "org/allbinary/data/generator/PaymentIdGenerator" unless const_defined?(:PaymentIdGenerator, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; autoload :SuperCrypt, "org/allbinary/logic/control/crypt/SuperCrypt" unless const_defined?(:SuperCrypt, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end; end; end

