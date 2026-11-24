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
# package org.allbinary.data.tables.user

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/UserEntityInterface"

module ::Org; module Allbinary; module DataPackage; module Tables; module User

class UserEntity < ::Org::Allbinary::Logic::Communication::Sql::AbSqlBean
    include UserEntityInterface
    attr_accessor :logUtil, :tableName, :COMMAND_SUCCESS_FOR_USER, :PASSWORD_LABEL, :EQUALS, :COMMAND_SUCCESS_BUT_LOGIN_FAILED, :INVALID_PASSWORD_LABEL, :NOT_EQUAL, :END_QUOTES

    def jfields_org_allbinary_data_tables_user_UserEntity
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @tableName = "user"
        @COMMAND_SUCCESS_FOR_USER = "Command Success for user: "
        @PASSWORD_LABEL = " Password: "
        @EQUALS = "=="
        @COMMAND_SUCCESS_BUT_LOGIN_FAILED = "Command Success but login failed for user: "
        @INVALID_PASSWORD_LABEL = " Password: \n\""
        @NOT_EQUAL = "\"!=\""
        @END_QUOTES = ::Org::Allbinary::StringPackage::CommonSeps.getInstance().QUOTE
    end
    

    def initialize()
        super(::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new())
        jfields_org_allbinary_data_tables_user_UserEntity
        self.setTableName(@tableName)
    end
    

    def insert(values)
        begin
            UserEntity.superclass.java_super_method(:insert, 1).bind(self).call(values)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
            end
        end
    end
    java_overload :insert, 1
    

    # throws Exception
    def getAdministrators()
        return self.getUsersWithRole(::Org::Allbinary::Business::User::Role::UserRoleFactory.getInstance().ADMINISTRATOR)
    end
    java_overload :getAdministrators, 0
    

    # throws Exception
    def getStoreManagers(storeFrontInterface)
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        usersVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        keysAndValues.put(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s, ::Org::Allbinary::Business::User::Role::UserRoleFactory.getInstance().STOREMANAGER.to_s)
        keysAndValues.put(::Org::Allbinary::Business::User::UserData::PERMISSIONS, storeFrontInterface.getName())
        usersHashMapVector = UserEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keysAndValues)
        size = usersHashMapVector.size()
        (0...size).each do |i|
            userHashMap = usersHashMapVector.get(i)
            if userHashMap != nil
                usersVector.add(::Org::Allbinary::Business::User::Modules::User.new(userHashMap))
            end
        end
        return usersVector
    end
    java_overload :getStoreManagers, 1
    

    # throws Exception
    def getCustomers()
        return self.getUsersWithRole(::Org::Allbinary::Business::User::Role::UserRoleFactory.getInstance().CUSTOMER)
    end
    java_overload :getCustomers, 0
    

    # throws Exception
    def getUsersWithRole(userRole)
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        usersVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        keysAndValues.put(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s, userRole.to_s)
        usersHashMapVector = UserEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keysAndValues)
        size = usersHashMapVector.size()
        (0...size).each do |index|
            userHashMap = usersHashMapVector.get(index)
            if userHashMap != nil
                usersVector.add(::Org::Allbinary::Business::User::Modules::User.new(userHashMap))
            end
        end
        return usersVector
    end
    java_overload :getUsersWithRole, 1
    

    # throws Exception
    def getUsers(storeFrontInterface)
        keysAndValues = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        usersVector = ::Org::Allbinary::Util::BasicArrayListD.new()
        keysAndValues.put(::Org::Allbinary::Business::Context::Modules::Storefront::StoreFrontData.getInstance().NAME, storeFrontInterface.getName())
        usersHashMapVector = UserEntity.superclass.java_super_method(:getRows, 1).bind(self).call(keysAndValues)
        size = usersHashMapVector.size()
        (0...size).each do |index|
            userHashMap = usersHashMapVector.get(index)
            if userHashMap != nil
                usersVector.add(::Org::Allbinary::Business::User::Modules::User.new(userHashMap))
            end
        end
        return usersVector
    end
    java_overload :getUsers, 1
    

    # throws Exception
    def getUser(userName)
        row = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
        row.put(::Org::Allbinary::Business::User::UserData::USERNAME, userName)
        userHashMap = UserEntity.superclass.java_super_method(:getRow, 1).bind(self).call(row)
        if userHashMap != nil
            return ::Org::Allbinary::Business::User::CreateUserFactory.getInstance(userHashMap)
        else
            return nil
        end
    end
    java_overload :getUser, 1
    

    def deleteWhere(key, value)
        begin
            UserEntity.superclass.java_super_method(:deleteWhere, 2).bind(self).call(key, value)
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "deleteWhere")
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "deleteWhere", e)
            end
        end
    end
    java_overload :deleteWhere, 2
    

    def login(userName, password)
        begin
            isUserNameAndPasswordCorrect = 0
            result = UserEntity.superclass.java_super_method(:getField, 3).bind(self).call(::Org::Allbinary::Business::User::UserData::USERNAME, userName, ::Org::Allbinary::Business::User::UserData::PASSWORD)
            encryption = UserEntity.superclass.java_super_method(:getField, 3).bind(self).call(::Org::Allbinary::Business::User::UserData::USERNAME, userName, ::Org::Allbinary::Business::Entry::EntryData.getInstance().ENCRYPTION)
            if encryption != nil && (encryption <=> @stringUtil.EMPTY_STRING) != 0
                isUserNameAndPasswordCorrect = (result <=> ::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(encryption.to_i).encrypt(password))
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF("Command Success but login failed for user: " + userName + " because user did not exist", self, "login")
                end
                return ::Org::Allbinary::Globals::GLOBALS2::LOGINFAILED
            end
            if isUserNameAndPasswordCorrect == 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append(@COMMAND_SUCCESS_FOR_USER)
                    stringBuffer.append(userName)
                    stringBuffer.append(@PASSWORD_LABEL)
                    stringBuffer.append(password)
                    stringBuffer.append(@EQUALS)
                    stringBuffer.append(result)
                    @logUtil.putF(stringBuffer.to_s, self, "login")
                end
                return ::Org::Allbinary::Globals::GLOBALS2::LOGINSUCCESS
            else
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append(@COMMAND_SUCCESS_BUT_LOGIN_FAILED)
                    stringBuffer.append(userName)
                    stringBuffer.append(@INVALID_PASSWORD_LABEL)
                    stringBuffer.append(::Org::Allbinary::Logic::ControlPackage::Crypt::SuperCrypt.new(encryption.to_i).encrypt(password))
                    stringBuffer.append(@NOT_EQUAL)
                    stringBuffer.append(result)
                    stringBuffer.append(@END_QUOTES)
                    @logUtil.putF(stringBuffer.to_s, self, "login")
                end
                return ::Org::Allbinary::Globals::GLOBALS2::LOGINFAILED
            end
        rescue StandardError => e
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "login", e)
            end
            return "Error"
        end
    end
    java_overload :login, 2
    

    def update(userName, updatedValues)
        UserEntity.superclass.java_super_method(:updateWhere, 3).bind(self).call(::Org::Allbinary::Business::User::UserData::USERNAME, userName, updatedValues)
    end
    java_overload :update, 2
    

    def dropTables()
        return UserEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTables, 0
    

    def createTableStatement()
        entryData = ::Org::Allbinary::Business::Entry::EntryData.getInstance()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(::Org::Allbinary::Business::User::UserData::USERNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::UserData::PREFIXNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::FIRSTNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::LASTNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::MIDDLENAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::SUFFIXNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::COMPANY).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::POSITIONATCOMPANY).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::MAINEMAIL).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::UserData::SECONDARYEMAIL).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::HOMEPHONE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::CELLPHONE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::WORKPHONE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::OTHERCONTACT).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::ELECTRONICDEVICE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::FAX).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::Role::UserRoleData::NAME.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(::Org::Allbinary::Business::User::UserData::CONFIGURATION).append(@sqlTypeStrings.BLOB_NOT_NULL).append(::Org::Allbinary::Business::User::UserData::PERMISSIONS).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(entryData.ENCRYPTION).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(::Org::Allbinary::Business::User::UserData::SECRET).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(::Org::Allbinary::Business::User::UserData::PASSWORD).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(entryData.ENABLE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(entryData.TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData.LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(::Org::Allbinary::Business::User::UserData::USERNAME).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    java_overload :createTableStatement, 0
    

    def createTable()
        return UserEntity.superclass.java_super_method(:createTable, 1).bind(self).call(self.createTableStatement())
    end
    java_overload :createTable, 0
    

    def dropTable()
        return UserEntity.superclass.java_super_method(:dropTable, 0).bind(self).call()
    end
    java_overload :dropTable, 0
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontData, "org/allbinary/business/context/modules/storefront/StoreFrontData" unless const_defined?(:StoreFrontData, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Context; module Modules; module Storefront; autoload :StoreFrontInterface, "org/allbinary/business/context/modules/storefront/StoreFrontInterface" unless const_defined?(:StoreFrontInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module Business; module Entry; autoload :EntryData, "org/allbinary/business/entry/EntryData" unless const_defined?(:EntryData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :CreateUserFactory, "org/allbinary/business/user/CreateUserFactory" unless const_defined?(:CreateUserFactory, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserData, "org/allbinary/business/user/UserData" unless const_defined?(:UserData, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; autoload :UserInterface, "org/allbinary/business/user/UserInterface" unless const_defined?(:UserInterface, false); end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Modules; autoload :User, "org/allbinary/business/user/modules/User" unless const_defined?(:User, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRole, "org/allbinary/business/user/role/UserRole" unless const_defined?(:UserRole, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleData, "org/allbinary/business/user/role/UserRoleData" unless const_defined?(:UserRoleData, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module User; module Role; autoload :UserRoleFactory, "org/allbinary/business/user/role/UserRoleFactory" unless const_defined?(:UserRoleFactory, false); end; end; end; end; end
module ::Org; module Allbinary; module Globals; autoload :GLOBALS2, "org/allbinary/globals/GLOBALS2" unless const_defined?(:GLOBALS2, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module ControlPackage; module Crypt; autoload :SuperCrypt, "org/allbinary/logic/control/crypt/SuperCrypt" unless const_defined?(:SuperCrypt, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

end; end; end; end; end

