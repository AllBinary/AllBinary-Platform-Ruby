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

class Initializer
    attr_accessor :logUtil, :userJdbcDriver, :userName, :userUserName, :userPassword, :userSchema, :userServer, :userPort, :historyJdbcDriver, :historyName, :historyUserName, :historyPassword, :historySchema, :historyServer, :historyPort, :logJdbcDriver, :logName, :logUserName, :logPassword, :logSchema, :logServer, :logPort, :inventoryJdbcDriver, :inventoryName, :inventoryUserName, :inventoryPassword, :inventorySchema, :inventoryServer, :inventoryPort, :staticPagesJdbcDriver, :staticPagesName, :staticPagesUserName, :staticPagesPassword, :staticPagesSchema, :staticPagesServer, :staticPagesPort

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @userJdbcDriver = nil
        @userName = nil
        @userUserName = nil
        @userPassword = nil
        @userSchema = nil
        @userServer = nil
        @userPort = nil
        @historyJdbcDriver = nil
        @historyName = nil
        @historyUserName = nil
        @historyPassword = nil
        @historySchema = nil
        @historyServer = nil
        @historyPort = nil
        @logJdbcDriver = nil
        @logName = nil
        @logUserName = nil
        @logPassword = nil
        @logSchema = nil
        @logServer = nil
        @logPort = nil
        @inventoryJdbcDriver = nil
        @inventoryName = nil
        @inventoryUserName = nil
        @inventoryPassword = nil
        @inventorySchema = nil
        @inventoryServer = nil
        @inventoryPort = nil
        @staticPagesJdbcDriver = nil
        @staticPagesName = nil
        @staticPagesUserName = nil
        @staticPagesPassword = nil
        @staticPagesSchema = nil
        @staticPagesServer = nil
        @staticPagesPort = nil
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(map)
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
        self.getFormData(hashMap)
    end
    

    def constructor1(initHashMap)
        initialize_fields
        self.getFormData(initHashMap)
    end
    

    def getFormData(hashMap)
        begin
            initializerData = InitializerData.getInstance()
            @userJdbcDriver = hashMap.get(initializerData.CUSTOMERJDBCDRIVER)
            @userName = hashMap.get(initializerData.CUSTOMERNAME)
            @userUserName = hashMap.get(initializerData.CUSTOMERUSERNAME)
            @userPassword = hashMap.get(initializerData.CUSTOMERPASSWORD)
            @userSchema = hashMap.get(initializerData.CUSTOMERSCHEMA)
            @userServer = hashMap.get(initializerData.CUSTOMERSERVER)
            @userPort = hashMap.get(initializerData.CUSTOMERPORT)
            @historyJdbcDriver = hashMap.get(initializerData.HISTORYJDBCDRIVER)
            @historyName = hashMap.get(initializerData.HISTORYNAME)
            @historyUserName = hashMap.get(initializerData.HISTORYUSERNAME)
            @historyPassword = hashMap.get(initializerData.HISTORYPASSWORD)
            @historySchema = hashMap.get(initializerData.HISTORYSCHEMA)
            @historyServer = hashMap.get(initializerData.HISTORYSERVER)
            @historyPort = hashMap.get(initializerData.HISTORYPORT)
            @logJdbcDriver = hashMap.get(initializerData.LOGJDBCDRIVER)
            @logName = hashMap.get(initializerData.LOGNAME)
            @logUserName = hashMap.get(initializerData.LOGUSERNAME)
            @logPassword = hashMap.get(initializerData.LOGPASSWORD)
            @logSchema = hashMap.get(initializerData.LOGSCHEMA)
            @logServer = hashMap.get(initializerData.LOGSERVER)
            @logPort = hashMap.get(initializerData.LOGPORT)
            @inventoryJdbcDriver = hashMap.get(initializerData.INVENTORYJDBCDRIVER)
            @inventoryName = hashMap.get(initializerData.INVENTORYNAME)
            @inventoryUserName = hashMap.get(initializerData.INVENTORYUSERNAME)
            @inventoryPassword = hashMap.get(initializerData.INVENTORYPASSWORD)
            @inventorySchema = hashMap.get(initializerData.INVENTORYSCHEMA)
            @inventoryServer = hashMap.get(initializerData.INVENTORYSERVER)
            @inventoryPort = hashMap.get(initializerData.INVENTORYPORT)
            @staticPagesJdbcDriver = hashMap.get(initializerData.STATICPAGESJDBCDRIVER)
            @staticPagesName = hashMap.get(initializerData.STATICPAGESNAME)
            @staticPagesUserName = hashMap.get(initializerData.STATICPAGESUSERNAME)
            @staticPagesPassword = hashMap.get(initializerData.STATICPAGESPASSWORD)
            @staticPagesSchema = hashMap.get(initializerData.STATICPAGESSCHEMA)
            @staticPagesServer = hashMap.get(initializerData.STATICPAGESSERVER)
            @staticPagesPort = hashMap.get(initializerData.STATICPAGESPORT)
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
        if !self.isJdbcDriverValid(@userJdbcDriver)
            isValid = false
        end
        stringValidationUtil = StringValidationUtil.getInstance()
        if !stringValidationUtil.isValidRequired(@userName, Initializer::MIN, Initializer::MAXDB)
            isValid = false
        end
        if !stringValidationUtil.isValidRequired(@userUserName, Initializer::MIN, Initializer::MAX)
            isValid = false
        end
        if !stringValidationUtil.isValidNotRequired(@userPassword, Initializer::MINPASSWORD, Initializer::MAX)
            isValid = false
        end
        if !self.isJdbcDriverValid(@historyJdbcDriver)
            isValid = false
        end
        if !stringValidationUtil.isValidRequired(@historyName, Initializer::MIN, Initializer::MAXDB)
            isValid = false
        end
        if !stringValidationUtil.isValidRequired(@historyUserName, Initializer::MIN, Initializer::MAX)
            isValid = false
        end
        if !stringValidationUtil.isValidNotRequired(@historyPassword, Initializer::MINPASSWORD, Initializer::MAX)
            isValid = false
        end
        if !self.isJdbcDriverValid(@logJdbcDriver)
            isValid = false
        end
        if !stringValidationUtil.isValidRequired(@logName, Initializer::MIN, Initializer::MAXDB)
            isValid = false
        end
        if !stringValidationUtil.isValidRequired(@logUserName, Initializer::MIN, Initializer::MAX)
            isValid = false
        end
        if !stringValidationUtil.isValidNotRequired(@logPassword, Initializer::MINPASSWORD, Initializer::MAX)
            isValid = false
        end
        if !self.isJdbcDriverValid(@inventoryJdbcDriver)
            isValid = false
        end
        if !stringValidationUtil.isValidRequired(@inventoryName, Initializer::MIN, Initializer::MAXDB)
            isValid = false
        end
        if !stringValidationUtil.isValidRequired(@inventoryUserName, Initializer::MIN, Initializer::MAX)
            isValid = false
        end
        if !stringValidationUtil.isValidNotRequired(@inventoryPassword, Initializer::MINPASSWORD, Initializer::MAX)
            isValid = false
        end
        if !self.isJdbcDriverValid(@staticPagesJdbcDriver)
            isValid = false
        end
        if !stringValidationUtil.isValidRequired(@staticPagesName, Initializer::MIN, Initializer::MAXDB)
            isValid = false
        end
        if !stringValidationUtil.isValidRequired(@staticPagesUserName, Initializer::MIN, Initializer::MAX)
            isValid = false
        end
        if !stringValidationUtil.isValidNotRequired(@staticPagesPassword, Initializer::MINPASSWORD, Initializer::MAX)
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
    

    def getJdbcDriverSolutionInfo()
        stringBuffer = StringMaker.new()
        stringBuffer.append("The following describes the possible problems and solutions regarding the Jdbc Driver error(s):<p/>")
        stringBuffer.append("1. A JDBC driver you specified is not in your classpath.<br/>")
        stringBuffer.append("Solution 1: Move the JDBC driver into any directory specified in the existing classpath. <br/>")
        stringBuffer.append("Solution 2: Add the directory that contains the JDBC driver to the classpath.<br/>")
        stringBuffer.append("Solution 3: Add the JDBC driver to the WEB-INF/lib directory where you installed this webapp.<br/>")
        stringBuffer.append("2. The JDBC driver you specified does not exit.<br/>")
        stringBuffer.append("Solution: Get a JDBC driver. <br/>")
        stringBuffer.append("3. The JDBC driver you specified is not valid.<br/>")
        stringBuffer.append("Solution: Use a valid JDBC driver.<p/>")
        return stringBuffer.to_s
    end
    

    def getInvalidInfo()
        isJdbcDriversValid = true
        stringBuffer = StringMaker.new()
        if !self.isJdbcDriverValid(@userJdbcDriver)
            isJdbcDriversValid = false
            stringBuffer.append(self.getJdbcDriverValidationInfo(@userJdbcDriver))
        end
        stringValidationUtil = StringValidationUtil.getInstance()
        if !stringValidationUtil.isValidRequired(@userName, Initializer::MIN, Initializer::MAXDB)
            stringBuffer.append("User db name should be < " + (Initializer::MAXDB).to_s + " and > " + (Initializer::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidRequired(@userUserName, Initializer::MIN, Initializer::MAX)
            stringBuffer.append("User db username should be < " + (Initializer::MAX).to_s + " and > " + (Initializer::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidNotRequired(@userPassword, Initializer::MINPASSWORD, Initializer::MAX)
            stringBuffer.append("User DB password should be < " + (Initializer::MAX).to_s + " and > " + (Initializer::MINPASSWORD).to_s + " characters in length.<br />")
        end
        if !self.isJdbcDriverValid(@historyJdbcDriver)
            isJdbcDriversValid = false
            stringBuffer.append(self.getJdbcDriverValidationInfo(@historyJdbcDriver))
        end
        if !stringValidationUtil.isValidRequired(@historyName, Initializer::MIN, Initializer::MAXDB)
            stringBuffer.append("History db should be < " + (Initializer::MAXDB).to_s + " and > " + (Initializer::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidRequired(@historyUserName, Initializer::MIN, Initializer::MAX)
            stringBuffer.append("History db username should be < " + (Initializer::MAX).to_s + " and > " + (Initializer::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidNotRequired(@historyPassword, Initializer::MINPASSWORD, Initializer::MAX)
            stringBuffer.append("History db password should be < " + (Initializer::MAX).to_s + " and > " + (Initializer::MINPASSWORD).to_s + " characters in length.<br />")
        end
        if !self.isJdbcDriverValid(@logJdbcDriver)
            isJdbcDriversValid = false
            stringBuffer.append(self.getJdbcDriverValidationInfo(@logJdbcDriver))
        end
        if !stringValidationUtil.isValidRequired(@logName, Initializer::MIN, Initializer::MAXDB)
            stringBuffer.append("Log db should be < " + (Initializer::MAXDB).to_s + " and > " + (Initializer::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidRequired(@logUserName, Initializer::MIN, Initializer::MAX)
            stringBuffer.append("Log db username should be < " + (Initializer::MAX).to_s + " and > " + (Initializer::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidNotRequired(@logPassword, Initializer::MINPASSWORD, Initializer::MAX)
            stringBuffer.append("Log db password should be < " + (Initializer::MAX).to_s + " and > " + (Initializer::MINPASSWORD).to_s + " characters in length.<br />")
        end
        if !self.isJdbcDriverValid(@inventoryJdbcDriver)
            isJdbcDriversValid = false
            stringBuffer.append(self.getJdbcDriverValidationInfo(@inventoryJdbcDriver))
        end
        if !stringValidationUtil.isValidRequired(@inventoryName, Initializer::MIN, Initializer::MAXDB)
            stringBuffer.append("Inventory db should be < " + (Initializer::MAXDB).to_s + " and > " + (Initializer::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidRequired(@inventoryUserName, Initializer::MIN, Initializer::MAX)
            stringBuffer.append("Inventory db username should be < " + (Initializer::MAX).to_s + " and > " + (Initializer::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidNotRequired(@inventoryPassword, Initializer::MINPASSWORD, Initializer::MAX)
            stringBuffer.append("Inventory DB password should be < " + (Initializer::MAX).to_s + " and > " + (Initializer::MINPASSWORD).to_s + " characters in length.<br />")
        end
        if !self.isJdbcDriverValid(@staticPagesJdbcDriver)
            isJdbcDriversValid = false
            stringBuffer.append(self.getJdbcDriverValidationInfo(@staticPagesJdbcDriver))
        end
        if !stringValidationUtil.isValidRequired(@staticPagesName, Initializer::MIN, Initializer::MAXDB)
            stringBuffer.append("Static Pages db should be < " + (Initializer::MAXDB).to_s + " and > " + (Initializer::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidRequired(@staticPagesUserName, Initializer::MIN, Initializer::MAX)
            stringBuffer.append("Static Pages db username should be < " + (Initializer::MAX).to_s + " and > " + (Initializer::MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidNotRequired(@staticPagesPassword, Initializer::MINPASSWORD, Initializer::MAX)
            stringBuffer.append("Static Pages DB password should be < " + (Initializer::MAX).to_s + " and > " + (Initializer::MINPASSWORD).to_s + " characters in length.<br />")
        end
        if !isJdbcDriversValid
            stringBuffer.append(getJdbcDriverSolutionInfo())
        end
        return stringBuffer.to_s
    end
    

    # throws Exception
    def set()
        @logUtil.putF("Creating DB connection files", self, "set()")
        userDbInitInfo = UserDbInitInfo.new(false)
        userDbInitInfo.setJdbcDriver(@userJdbcDriver)
        userDbInitInfo.setName(@userName)
        userDbInitInfo.setUserName(@userUserName)
        userDbInitInfo.setPassword(@userPassword)
        userDbInitInfo.setSchema(@userSchema)
        userDbInitInfo.setServer(@userServer)
        userDbInitInfo.setPort(@userPort)
        userDbInitInfo.setHasRead(true)
        userDbInitInfo.write()
        historyDbInitInfo = HistoryDbInitInfo.new(false)
        historyDbInitInfo.setJdbcDriver(@historyJdbcDriver)
        historyDbInitInfo.setName(@historyName)
        historyDbInitInfo.setUserName(@historyUserName)
        historyDbInitInfo.setPassword(@historyPassword)
        historyDbInitInfo.setSchema(@historySchema)
        historyDbInitInfo.setServer(@historyServer)
        historyDbInitInfo.setPort(@historyPort)
        historyDbInitInfo.setHasRead(true)
        historyDbInitInfo.write()
        logDbInitInfo = LogDbInitInfo.new(false)
        logDbInitInfo.setJdbcDriver(@logJdbcDriver)
        logDbInitInfo.setName(@logName)
        logDbInitInfo.setUserName(@logUserName)
        logDbInitInfo.setPassword(@logPassword)
        logDbInitInfo.setSchema(@logSchema)
        logDbInitInfo.setServer(@logServer)
        logDbInitInfo.setPort(@logPort)
        logDbInitInfo.setHasRead(true)
        logDbInitInfo.write()
        staticPagesDbInitInfo = StaticPagesDbInitInfo.new(false)
        staticPagesDbInitInfo.setJdbcDriver(@staticPagesJdbcDriver)
        staticPagesDbInitInfo.setName(@staticPagesName)
        staticPagesDbInitInfo.setUserName(@staticPagesUserName)
        staticPagesDbInitInfo.setPassword(@staticPagesPassword)
        staticPagesDbInitInfo.setSchema(@staticPagesSchema)
        staticPagesDbInitInfo.setServer(@staticPagesServer)
        staticPagesDbInitInfo.setPort(@staticPagesPort)
        staticPagesDbInitInfo.setHasRead(true)
        staticPagesDbInitInfo.write()
        inventoryDbInitInfo = InventoryDbInitInfo.new(false)
        inventoryDbInitInfo.setJdbcDriver(@inventoryJdbcDriver)
        inventoryDbInitInfo.setName(@inventoryName)
        inventoryDbInitInfo.setUserName(@inventoryUserName)
        inventoryDbInitInfo.setPassword(@inventoryPassword)
        inventoryDbInitInfo.setSchema(@inventorySchema)
        inventoryDbInitInfo.setServer(@inventoryServer)
        inventoryDbInitInfo.setPort(@inventoryPort)
        inventoryDbInitInfo.setHasRead(true)
        inventoryDbInitInfo.write()
        @logUtil.putF("Created DB connection files", self, "set()")
    end
end

require "java/util/HashMap"
require "org/allbinary/business/init/db/HistoryDbInitInfo"
require "org/allbinary/business/init/db/InventoryDbInitInfo"
require "org/allbinary/business/init/db/LogDbInitInfo"
require "org/allbinary/business/init/db/StaticPagesDbInitInfo"
require "org/allbinary/business/init/db/UserDbInitInfo"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/logic/string/StringValidationUtil"
require "org/allbinary/string/CommonStrings"
require "org/allbinary/business/installer/InitializerData"

class Initializer
    MAXDB = 30
    MAX = 16
    MIN = 4
    MINPASSWORD = 0
end

