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
# package org.allbinary.business.installer

# require "java/util/Map"
# require "java/util/Set"

class InitializerDatabase
    attr_accessor :logUtil, :adminDbUserName, :adminDbPassword, :adminJdbcDriver, :adminSchema, :adminServer, :adminPort, :initDb

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @adminDbUserName = nil
        @adminDbPassword = nil
        @adminJdbcDriver = nil
        @adminSchema = nil
        @adminServer = nil
        @adminPort = nil
        @initDb = nil
    end

    def initialize(*args)
        case args.length
        when 2 then constructor2(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor2(abeClientInformation, map)
        initialize_fields
        stringBuffer = StringMaker.new()
        hashMap = StdUtil.getInstance().createHashMap()
        keys = map.keySet()
        keyArray = keys.toArray()
        size = keyArray.length
        (0...size).each do |index|
            key = keyArray[index]
            values = map.get(key)
            hashMap.put(String.new(key), String.new(values[0]))
            stringBuffer.delete(0, stringBuffer.length())
            stringBuffer.append("key: ")
            stringBuffer.append(key)
            stringBuffer.append(" Value: ")
            stringBuffer.append(values[0])
            @logUtil.putF(stringBuffer.to_s, self, "getFormData()")
        end
        self.getFormData(abeClientInformation, hashMap)
    end
    

    def constructor2(abeClientInformation, initHashMap)
        initialize_fields
        self.getFormData(abeClientInformation, initHashMap)
    end
    

    def getFormData(abeClientInformation, hashMap)
        begin
            initializerData = InitializerData.getInstance()
            self.setAdminDbUserName(hashMap.get(initializerData.DBUSER))
            self.setAdminDbPassword(hashMap.get(initializerData.DBPASSWORD))
            self.setAdminJdbcDriver(hashMap.get(initializerData.ADMINJDBCDRIVER))
            self.setAdminSchema(hashMap.get(initializerData.ADMINSCHEMA))
            self.setAdminServer(hashMap.get(initializerData.ADMINSERVER))
            self.setAdminPort(hashMap.get(initializerData.ADMINPORT))
            dbConnectionInfo = DbConnectionInfo.new()
            adminDbName = StringUtil.getInstance().EMPTY_STRING
            dbConnectionInfo.setJdbcDriver(getAdminJdbcDriver())
            dbConnectionInfo.setName(adminDbName)
            dbConnectionInfo.setUserName(getAdminDbUserName())
            dbConnectionInfo.setPassword(getAdminDbPassword())
            dbConnectionInfo.setSchema(getAdminSchema())
            dbConnectionInfo.setServer(getAdminServer())
            dbConnectionInfo.setPort(getAdminPort())
            @initDb = DynamicInitDb.new(abeClientInformation, dbConnectionInfo)
        rescue StandardError => e
            @logUtil.put("Unable to get form data", self, "getFormData()", e)
        end
    end
    

    def isJdbcDriverValid(jdbcDriverClassPathString)
        begin
            Class.forName(jdbcDriverClassPathString).newInstance()
            return true
        rescue StandardError => e
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().PRELOADERERROR)
                commonStrings = CommonStrings.getInstance()
                @logUtil.put(commonStrings.EXCEPTION, self, commonStrings.IS_VALID, e)
            end
            return false
        end
    end
    

    def isValid()
        isValid = true
        if !self.isJdbcDriverValid(@adminJdbcDriver)
            isValid = false
        end
        stringValidationUtil = StringValidationUtil.getInstance()
        if !stringValidationUtil.isValidRequired(@adminDbUserName, InitializerDatabase::MIN, InitializerDatabase::MAX)
            isValid = false
        end
        if !stringValidationUtil.isValidNotRequired(@adminDbPassword, InitializerDatabase::MINPASSWORD, InitializerDatabase::MAX)
            isValid = false
        end
        return isValid
    end
    

    def getJdbcDriverValidationInfo(jdbcDriver)
        stringBuffer = StringMaker.new()
        stringBuffer.append("The JDBC driver (")
        stringBuffer.append(jdbcDriver)
        stringBuffer.append(") you have provided is not valid.<br/>")
        return stringBuffer.to_s
    end
    

    def getInvalidInfo()
        isValid = true
        isJdbcDriversValid = true
        stringBuffer = StringMaker.new()
        if !self.isJdbcDriverValid(@adminJdbcDriver)
            isJdbcDriversValid = false
            stringBuffer.append(self.getJdbcDriverValidationInfo(self.getAdminJdbcDriver()))
        end
        stringValidationUtil = StringValidationUtil.getInstance()
        if !stringValidationUtil.isValidRequired(@adminDbUserName, InitializerDatabase::MIN, InitializerDatabase::MAX)
            stringBuffer.append("Admin username should be < " + (InitializerDatabase::MAX).to_s + " and > " + (InitializerDatabase::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidNotRequired(@adminDbPassword, InitializerDatabase::MINPASSWORD, InitializerDatabase::MAX)
            stringBuffer.append("Admin password should be < " + (InitializerDatabase::MAX).to_s + " and > " + (InitializerDatabase::MINPASSWORD).to_s + " characters in length.<br />")
        end
        if !isJdbcDriversValid
            stringBuffer.append(InitializerData.getInstance().getJdbcDriverSolutionInfo())
        end
        return stringBuffer.to_s
    end
    

    def createUsers()
        begin
            @initDb.addUsers()
            return true
        rescue StandardError => e
            @logUtil.put("Unable to Create Users", self, "createUsers()", e)
            return false
        end
    end
    

    def createDatabases()
        begin
            @initDb.addDatabases()
            return true
        rescue StandardError => e
            @logUtil.put("Unable to Create Databases", self, "createDatabases()", e)
            return false
        end
    end
    

    def createTables()
        begin
            @initDb.addTables()
            return true
        rescue StandardError => e
            @logUtil.put("Unable to Create Tables", self, "createTables()", e)
            return false
        end
    end
    

    def getAdminDbUserName()
        return @adminDbUserName
    end
    

    def setAdminDbUserName(adminDbUserName)
        @adminDbUserName = adminDbUserName
    end
    

    def getAdminDbPassword()
        return @adminDbPassword
    end
    

    def setAdminDbPassword(adminDbPassword)
        @adminDbPassword = adminDbPassword
    end
    

    def getAdminJdbcDriver()
        return @adminJdbcDriver
    end
    

    def setAdminJdbcDriver(adminJdbcDriver)
        @adminJdbcDriver = adminJdbcDriver
    end
    

    def getAdminSchema()
        return @adminSchema
    end
    

    def setAdminSchema(adminSchema)
        @adminSchema = adminSchema
    end
    

    def getAdminServer()
        return @adminServer
    end
    

    def setAdminServer(adminServer)
        @adminServer = adminServer
    end
    

    def getAdminPort()
        return @adminPort
    end
    

    def setAdminPort(adminPort)
        @adminPort = adminPort
    end
end

require "java/util/HashMap"
require "org/allbinary/business/init/db/DatabaseConnectionInfoInterface"
require "org/allbinary/business/init/db/DbConnectionInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringUtil"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/business/installer/DynamicInitDb"
require "org/allbinary/business/installer/InitializerData"

class InitializerDatabase
    MAXDB = 30
    MAX = 16
    MIN = 4
    MINPASSWORD = 0
end

