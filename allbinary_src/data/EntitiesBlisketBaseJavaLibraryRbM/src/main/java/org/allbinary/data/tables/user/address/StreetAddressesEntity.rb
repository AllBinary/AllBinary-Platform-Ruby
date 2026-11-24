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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/address/StreetAddressesEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User; module Address

class StreetAddressesEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include StreetAddressesEntityInterface
    attr_accessor :logUtil, :userName

    def jfields_org_allbinary_data_tables_user_address_StreetAddressesEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @userName = nil unless instance_variable_defined?(:@userName)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_data_tables_user_address_StreetAddressesEntity_0(*args)
        when 1 then jnew_org_allbinary_data_tables_user_address_StreetAddressesEntity_1(*args)
        else raise ArgumentError, "No constructor of StreetAddressesEntity takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_data_tables_user_address_StreetAddressesEntity_0()
        StreetAddressesEntity.superclass.instance_method(:initialize).bind(self).call(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_address_StreetAddressesEntity
    end
    

    def jnew_org_allbinary_data_tables_user_address_StreetAddressesEntity_1(userName)
        StreetAddressesEntity.superclass.instance_method(:initialize).bind(self).call(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_address_StreetAddressesEntity
        @userName = userName
    end
    

    def remove(index)
        begin
            whereHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereHashMap.put(::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
            whereHashMap.put(::Org::Allbinary::Business::User::Address::StreetAddressData::ID, index.to_s)
            StreetAddressesEntity.superclass.java_super_method(:deleteWhere, 1).bind(self).call(whereHashMap)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "remove")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "remove", e)
            end
        end
    end
    java_overload :remove, 1
    

    def add_j1(address)
        self.add(address, ::Org::Allbinary::DataPackage::Tables::TableDataFactory.getInstance().INTEGER_MAX_VALUE_STRING)
    end
    

    def add_j2(address, index)
        begin
            values = ::Org::Allbinary::Util::BasicArrayListD.new()
            values.add(index)
            values.add(@userName)
            values.add(::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
            values.add(address.getName())
            values.add(address.getStreet())
            values.add(address.getCity())
            values.add(address.getState())
            values.add(address.getCode())
            values.add(address.getCountry())
            calendar = ::Java::Util::Calendar.getInstance()
            time = String.new(calendar.getTimeInMillis().to_s)
            values.add(time)
            StreetAddressesEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
            self.setDefault(getLastId())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "add")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "add", e)
            end
        end
    end

    def add(*java_overload_args)
        return add_j1(*java_overload_args) if java_overload_args.length == 1
        return add_j2(*java_overload_args) if java_overload_args.length == 2
        raise ArgumentError, "No method add takes #{java_overload_args.length} arguments"
    end
    

    def update(address)
        begin
            addressHashMap = address.toHashMap()
            whereKeyValuePairs = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereKeyValuePairs.put(::Org::Allbinary::Business::User::Address::StreetAddressData::ID, address.getId())
            whereKeyValuePairs.put(::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
            StreetAddressesEntity.superclass.java_super_method(:updateWhere, 2).bind(self).call(whereKeyValuePairs, addressHashMap)
            self.setDefault(address.getId())
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "update")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "add", e)
            end
        end
    end
    java_overload :update, 1
    

    def getLastId()
        return StreetAddressesEntity.superclass.java_super_method(:getLargestIntegerInColumnWhere, 3).bind(self).call(::Org::Allbinary::Business::User::Address::StreetAddressData::ID, ::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
    end
    java_overload :getLastId, 0
    

    def get_j0()
        begin
            streetAddressVector = ::Org::Allbinary::Util::BasicArrayListD.new()
            keyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            keyAndValue.put(::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
            addressList = StreetAddressesEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keyAndValue)
            size = addressList.size()
            (0...size).each do |index|
                addressHashMap = addressList.get(index)
                streetAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new(addressHashMap)
                if streetAddress != nil
                    streetAddressVector.add(streetAddress)
                end
            end
            return streetAddressVector
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
    end
    

    def get_j1(index)
        begin
            keyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            keyAndValue.put(::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
            keyAndValue.put(::Org::Allbinary::Business::User::Address::StreetAddressData::ID, index.to_s)
            addressHashMap = StreetAddressesEntity.superclass.java_super_method(:getRow, 1).bind(self).call(keyAndValue)
            if addressHashMap != nil
                return ::Org::Allbinary::Business::User::Address::StreetAddress.new(addressHashMap)
            else
                return nil
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, @commonStrings.GET, e)
            end
            return nil
        end
    end

    def get(*java_overload_args)
        return get_j0(*java_overload_args) if java_overload_args.length == 0
        return get_j1(*java_overload_args) if java_overload_args.length == 1
        raise ArgumentError, "No method get takes #{java_overload_args.length} arguments"
    end
    

    def getDefault()
        begin
            addressHashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            updateKeyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            updateKeyAndValue.put(::Org::Allbinary::Business::User::Address::StreetAddressData::DEFAULT, ::Org::Allbinary::Business::User::Address::StreetAddressData::DEFAULT)
            updateKeyAndValue.put(::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
            addressHashMap = StreetAddressesEntity.superclass.java_super_method(:getRow, 1).bind(self).call(updateKeyAndValue)
            if addressHashMap != nil
                streetAddress = ::Org::Allbinary::Business::User::Address::StreetAddress.new(addressHashMap)
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF(@commonStrings.SUCCESS, self, "getDefault")
                end
                return streetAddress
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF("No Default Address Found", self, "getDefault")
                end
                return nil
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "getDefault", e)
            end
            return nil
        end
    end
    java_overload :getDefault, 0
    

    def setDefault(value)
        begin
            updateKeyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereKeyAndValue = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
            whereKeyAndValue.put(::Org::Allbinary::Business::User::UserData::USERNAME, @userName)
            streetAddress = self.getDefault()
            if streetAddress != nil
                updateKeyAndValue.put(::Org::Allbinary::Business::User::Address::StreetAddressData::DEFAULT, ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING)
                whereKeyAndValue.put(::Org::Allbinary::Business::User::Address::StreetAddressData::ID, streetAddress.getId())
                StreetAddressesEntity.superclass.java_super_method(:updateWhere, 2).bind(self).call(whereKeyAndValue, updateKeyAndValue)
            end
            whereKeyAndValue.put(::Org::Allbinary::Business::User::Address::StreetAddressData::ID, value)
            updateKeyAndValue.put(::Org::Allbinary::Business::User::Address::StreetAddressData::DEFAULT, ::Org::Allbinary::Business::User::Address::StreetAddressData::DEFAULT)
            StreetAddressesEntity.superclass.java_super_method(:updateWhere, 2).bind(self).call(whereKeyAndValue, updateKeyAndValue)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "setDefault")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "setShippingAddress", e)
            end
        end
    end
    java_overload :setDefault, 1
    

    def getUserName()
        return @userName
    end
    java_overload :getUserName, 0
    

    def createTableStatement()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(self.getTableName()).append(@sqlStrings.START).append(::Org::Allbinary::Business::User::Address::StreetAddressData::ID).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL).append(::Org::Allbinary::Business::User::UserData::USERNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Address::StreetAddressData::DEFAULT).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Address::StreetAddressData::NAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::Address::StreetAddressData::STREET).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::Address::StreetAddressData::CITY).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::Address::StreetAddressData::STATE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::Address::StreetAddressData::CODE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::Address::StreetAddressData::COUNTRY).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::Entry::EntryData.getInstance().TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(::Org::Allbinary::Business::User::Address::StreetAddressData::ID).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return StreetAddressesEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def drop()
        return StreetAddressesEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :drop, 0
    

    def dropTable()
        return StreetAddressesEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
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
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddress, "org/allbinary/business/user/address/StreetAddress" unless const_defined?(:StreetAddress, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Address; autoload :StreetAddressData, "org/allbinary/business/user/address/StreetAddressData" unless const_defined?(:StreetAddressData, false); end; end; end; end; end
module ::Org; module Allbinary; module DataPackage; module Tables; autoload :TableDataFactory, "org/allbinary/data/tables/TableDataFactory" unless const_defined?(:TableDataFactory, false); end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end; end

