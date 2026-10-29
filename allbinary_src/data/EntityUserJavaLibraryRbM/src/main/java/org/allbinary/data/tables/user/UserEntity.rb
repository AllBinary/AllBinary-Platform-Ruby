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

require "org/allbinary/logic/communication/sql/AbSqlBean"
require "org/allbinary/data/tables/user/UserEntityInterface"

class UserEntity < AbSqlBean
    include UserEntityInterface
    attr_accessor :logUtil, :tableName, :COMMAND_SUCCESS_FOR_USER, :PASSWORD_LABEL, :EQUALS, :COMMAND_SUCCESS_BUT_LOGIN_FAILED, :INVALID_PASSWORD_LABEL, :NOT_EQUAL, :END_QUOTES

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @tableName = "user"
        @COMMAND_SUCCESS_FOR_USER = "Command Success for user: "
        @PASSWORD_LABEL = " Password: "
        @EQUALS = "=="
        @COMMAND_SUCCESS_BUT_LOGIN_FAILED = "Command Success but login failed for user: "
        @INVALID_PASSWORD_LABEL = " Password: \n\""
        @NOT_EQUAL = "\"!=\""
        @END_QUOTES = CommonSeps.getInstance().QUOTE
    end
    

    def initialize()
        super(UserDbInitInfo.new())
        initialize_fields
        self.setTableName(@tableName)
    end
    

    def insert(values)
        begin
            super(values)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, INSERT)
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, INSERT, e)
            end
        end
    end
    

    # throws Exception
    def getAdministrators()
        return self.getUsersWithRole(UserRoleFactory.getInstance().ADMINISTRATOR)
    end
    

    # throws Exception
    def getStoreManagers(storeFrontInterface)
        keysAndValues = StdUtil.getInstance().createHashMap()
        usersVector = BasicArrayListD.new()
        keysAndValues.put(UserRoleData::NAME.to_s, UserRoleFactory.getInstance().STOREMANAGER.to_s)
        keysAndValues.put(UserData::PERMISSIONS, storeFrontInterface.getName())
        usersHashMapVector = self.class.superclass.instance_method(:getRows).bind(self).call(keysAndValues)
        size = usersHashMapVector.size()
        (0...size).each do |i|
            userHashMap = usersHashMapVector.get(i)
            if userHashMap != nil
                usersVector.add(User.new(userHashMap))
            end
        end
        return usersVector
    end
    

    # throws Exception
    def getCustomers()
        return self.getUsersWithRole(UserRoleFactory.getInstance().CUSTOMER)
    end
    

    # throws Exception
    def getUsersWithRole(userRole)
        keysAndValues = StdUtil.getInstance().createHashMap()
        usersVector = BasicArrayListD.new()
        keysAndValues.put(UserRoleData::NAME.to_s, userRole.to_s)
        usersHashMapVector = self.class.superclass.instance_method(:getRows).bind(self).call(keysAndValues)
        size = usersHashMapVector.size()
        (0...size).each do |index|
            userHashMap = usersHashMapVector.get(index)
            if userHashMap != nil
                usersVector.add(User.new(userHashMap))
            end
        end
        return usersVector
    end
    

    # throws Exception
    def getUsers(storeFrontInterface)
        keysAndValues = StdUtil.getInstance().createHashMap()
        usersVector = BasicArrayListD.new()
        keysAndValues.put(StoreFrontData.getInstance().NAME, storeFrontInterface.getName())
        usersHashMapVector = self.class.superclass.instance_method(:getRows).bind(self).call(keysAndValues)
        size = usersHashMapVector.size()
        (0...size).each do |index|
            userHashMap = usersHashMapVector.get(index)
            if userHashMap != nil
                usersVector.add(User.new(userHashMap))
            end
        end
        return usersVector
    end
    

    # throws Exception
    def getUser(userName)
        row = StdUtil.getInstance().createHashMap()
        row.put(UserData::USERNAME, userName)
        userHashMap = self.class.superclass.instance_method(:getRow).bind(self).call(row)
        if userHashMap != nil
            return CreateUserFactory.getInstance(userHashMap)
        else
            return nil
        end
    end
    

    def deleteWhere(key, value)
        begin
            super(key, value)
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.putF(@commonStrings.SUCCESS, self, "deleteWhere")
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "deleteWhere", e)
            end
        end
    end
    

    def login(userName, password)
        begin
            isUserNameAndPasswordCorrect = 0
            result = self.class.superclass.instance_method(:getField).bind(self).call(UserData::USERNAME, userName, UserData::PASSWORD)
            encryption = self.class.superclass.instance_method(:getField).bind(self).call(UserData::USERNAME, userName, EntryData.getInstance().ENCRYPTION)
            if encryption != nil && (encryption <=> @stringUtil.EMPTY_STRING) != 0
                isUserNameAndPasswordCorrect = (result <=> SuperCrypt.new(encryption.to_i).encrypt(password))
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    @logUtil.putF("Command Success but login failed for user: " + userName + " because user did not exist", self, "login")
                end
                return GLOBALS2.LOGINFAILED
            end
            if isUserNameAndPasswordCorrect == 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append(@COMMAND_SUCCESS_FOR_USER)
                    stringBuffer.append(userName)
                    stringBuffer.append(@PASSWORD_LABEL)
                    stringBuffer.append(password)
                    stringBuffer.append(@EQUALS)
                    stringBuffer.append(result)
                    @logUtil.putF(stringBuffer.to_s, self, "login")
                end
                return GLOBALS2.LOGINSUCCESS
            else
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append(@COMMAND_SUCCESS_BUT_LOGIN_FAILED)
                    stringBuffer.append(userName)
                    stringBuffer.append(@INVALID_PASSWORD_LABEL)
                    stringBuffer.append(SuperCrypt.new(encryption.to_i).encrypt(password))
                    stringBuffer.append(@NOT_EQUAL)
                    stringBuffer.append(result)
                    stringBuffer.append(@END_QUOTES)
                    @logUtil.putF(stringBuffer.to_s, self, "login")
                end
                return GLOBALS2.LOGINFAILED
            end
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGING)
                @logUtil.put(@commonStrings.FAILURE, self, "login", e)
            end
            return "Error"
        end
    end
    

    def update(userName, updatedValues)
        self.class.superclass.instance_method(:updateWhere).bind(self).call(UserData::USERNAME, userName, updatedValues)
    end
    

    def dropTables()
        return self.class.superclass.instance_method(:dropTable).bind(self).call()
    end
    

    def createTableStatement()
        entryData = EntryData.getInstance()
        stringBuffer = StringMaker.new()
        stringBuffer.append(@sqlStrings.CREATE_TABLE).append(@tableName).append(@sqlStrings.START).append(UserData::USERNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(UserData::PREFIXNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::FIRSTNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::LASTNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::MIDDLENAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::SUFFIXNAME).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::COMPANY).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::POSITIONATCOMPANY).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::MAINEMAIL).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(UserData::SECONDARYEMAIL).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::HOMEPHONE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::CELLPHONE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::WORKPHONE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::OTHERCONTACT).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::ELECTRONICDEVICE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::FAX).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserRoleData::NAME.to_s).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(UserData::CONFIGURATION).append(@sqlTypeStrings.BLOB_NOT_NULL).append(UserData::PERMISSIONS).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(entryData.ENCRYPTION).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(UserData::SECRET).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(UserData::PASSWORD).append(@sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append(entryData.ENABLE).append(@sqlTypeStrings.MAX_CHAR_COLUMN).append(entryData.TIMECREATED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(entryData.LASTMODIFIED).append(@sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append(@sqlStrings.PRIMARY_KEY).append(UserData::USERNAME).append(@sqlStrings.END_)
        return stringBuffer.to_s
    end
    

    def createTable()
        return super(self.createTableStatement())
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/business/context/modules/storefront/StoreFrontData"
require "org/allbinary/business/context/modules/storefront/StoreFrontInterface"
require "org/allbinary/business/entry/EntryData"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/business/user/CreateUserFactory"
require "org/allbinary/business/user/UserData"
require "org/allbinary/business/user/UserInterface"
require "org/allbinary/business/user/modules/User"
require "org/allbinary/business/user/role/UserRole"
require "org/allbinary/business/user/role/UserRoleData"
require "org/allbinary/business/user/role/UserRoleFactory"
require "org/allbinary/globals/GLOBALS2"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/control/crypt/SuperCrypt"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

