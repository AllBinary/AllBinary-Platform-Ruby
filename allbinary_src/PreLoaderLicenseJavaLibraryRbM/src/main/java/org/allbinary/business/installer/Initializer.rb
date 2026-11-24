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

require "java/lang/JavaClass"
# require "java/util/Map"
# require "java/util/Set"

module ::Org; module Allbinary; module Business; module Installer

class Initializer
    attr_accessor :logUtil, :userJdbcDriver, :userName, :userUserName, :userPassword, :userSchema, :userServer, :userPort, :historyJdbcDriver, :historyName, :historyUserName, :historyPassword, :historySchema, :historyServer, :historyPort, :logJdbcDriver, :logName, :logUserName, :logPassword, :logSchema, :logServer, :logPort, :inventoryJdbcDriver, :inventoryName, :inventoryUserName, :inventoryPassword, :inventorySchema, :inventoryServer, :inventoryPort, :staticPagesJdbcDriver, :staticPagesName, :staticPagesUserName, :staticPagesPassword, :staticPagesSchema, :staticPagesServer, :staticPagesPort

    def jfields_org_allbinary_business_installer_Initializer
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @userJdbcDriver = nil unless instance_variable_defined?(:@userJdbcDriver)
        @userName = nil unless instance_variable_defined?(:@userName)
        @userUserName = nil unless instance_variable_defined?(:@userUserName)
        @userPassword = nil unless instance_variable_defined?(:@userPassword)
        @userSchema = nil unless instance_variable_defined?(:@userSchema)
        @userServer = nil unless instance_variable_defined?(:@userServer)
        @userPort = nil unless instance_variable_defined?(:@userPort)
        @historyJdbcDriver = nil unless instance_variable_defined?(:@historyJdbcDriver)
        @historyName = nil unless instance_variable_defined?(:@historyName)
        @historyUserName = nil unless instance_variable_defined?(:@historyUserName)
        @historyPassword = nil unless instance_variable_defined?(:@historyPassword)
        @historySchema = nil unless instance_variable_defined?(:@historySchema)
        @historyServer = nil unless instance_variable_defined?(:@historyServer)
        @historyPort = nil unless instance_variable_defined?(:@historyPort)
        @logJdbcDriver = nil unless instance_variable_defined?(:@logJdbcDriver)
        @logName = nil unless instance_variable_defined?(:@logName)
        @logUserName = nil unless instance_variable_defined?(:@logUserName)
        @logPassword = nil unless instance_variable_defined?(:@logPassword)
        @logSchema = nil unless instance_variable_defined?(:@logSchema)
        @logServer = nil unless instance_variable_defined?(:@logServer)
        @logPort = nil unless instance_variable_defined?(:@logPort)
        @inventoryJdbcDriver = nil unless instance_variable_defined?(:@inventoryJdbcDriver)
        @inventoryName = nil unless instance_variable_defined?(:@inventoryName)
        @inventoryUserName = nil unless instance_variable_defined?(:@inventoryUserName)
        @inventoryPassword = nil unless instance_variable_defined?(:@inventoryPassword)
        @inventorySchema = nil unless instance_variable_defined?(:@inventorySchema)
        @inventoryServer = nil unless instance_variable_defined?(:@inventoryServer)
        @inventoryPort = nil unless instance_variable_defined?(:@inventoryPort)
        @staticPagesJdbcDriver = nil unless instance_variable_defined?(:@staticPagesJdbcDriver)
        @staticPagesName = nil unless instance_variable_defined?(:@staticPagesName)
        @staticPagesUserName = nil unless instance_variable_defined?(:@staticPagesUserName)
        @staticPagesPassword = nil unless instance_variable_defined?(:@staticPagesPassword)
        @staticPagesSchema = nil unless instance_variable_defined?(:@staticPagesSchema)
        @staticPagesServer = nil unless instance_variable_defined?(:@staticPagesServer)
        @staticPagesPort = nil unless instance_variable_defined?(:@staticPagesPort)
    end

    def initialize(*args)
        case args.length
        when 1 then jnew_org_allbinary_business_installer_Initializer_1(*args)
        else raise ArgumentError, "No constructor of Initializer takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_installer_Initializer_1(*java_overload_args)
        return jnew_org_allbinary_business_installer_Initializer_1_1(*java_overload_args) if true && !(java_overload_args[0].is_a?(::Numeric) || java_overload_args[0] == true || java_overload_args[0] == false || java_overload_args[0].is_a?(::Array))
        return jnew_org_allbinary_business_installer_Initializer_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_installer_Initializer_1_1(map)
        jfields_org_allbinary_business_installer_Initializer
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        hashMap = ::Org::Allbinary::Logic::StdUtil.getInstance().createHashMap()
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
    

    def jnew_org_allbinary_business_installer_Initializer_1_2(initHashMap)
        jfields_org_allbinary_business_installer_Initializer
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append("The JDBC driver (")
        stringBuffer.append(jdbcDriver)
        stringBuffer.append(") you have provided is not valid.<br/>")
        return stringBuffer.to_s
    end
    

    def getJdbcDriverSolutionInfo()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        if !self.isJdbcDriverValid(@userJdbcDriver)
            isJdbcDriversValid = false
            stringBuffer.append(self.getJdbcDriverValidationInfo(@userJdbcDriver))
        end
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
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
        userDbInitInfo = ::Org::Allbinary::Business::Init::Db::UserDbInitInfo.new(false)
        userDbInitInfo.setJdbcDriver(@userJdbcDriver)
        userDbInitInfo.setName(@userName)
        userDbInitInfo.setUserName(@userUserName)
        userDbInitInfo.setPassword(@userPassword)
        userDbInitInfo.setSchema(@userSchema)
        userDbInitInfo.setServer(@userServer)
        userDbInitInfo.setPort(@userPort)
        userDbInitInfo.setHasRead(true)
        userDbInitInfo.write()
        historyDbInitInfo = ::Org::Allbinary::Business::Init::Db::HistoryDbInitInfo.new(false)
        historyDbInitInfo.setJdbcDriver(@historyJdbcDriver)
        historyDbInitInfo.setName(@historyName)
        historyDbInitInfo.setUserName(@historyUserName)
        historyDbInitInfo.setPassword(@historyPassword)
        historyDbInitInfo.setSchema(@historySchema)
        historyDbInitInfo.setServer(@historyServer)
        historyDbInitInfo.setPort(@historyPort)
        historyDbInitInfo.setHasRead(true)
        historyDbInitInfo.write()
        logDbInitInfo = ::Org::Allbinary::Business::Init::Db::LogDbInitInfo.new(false)
        logDbInitInfo.setJdbcDriver(@logJdbcDriver)
        logDbInitInfo.setName(@logName)
        logDbInitInfo.setUserName(@logUserName)
        logDbInitInfo.setPassword(@logPassword)
        logDbInitInfo.setSchema(@logSchema)
        logDbInitInfo.setServer(@logServer)
        logDbInitInfo.setPort(@logPort)
        logDbInitInfo.setHasRead(true)
        logDbInitInfo.write()
        staticPagesDbInitInfo = ::Org::Allbinary::Business::Init::Db::StaticPagesDbInitInfo.new(false)
        staticPagesDbInitInfo.setJdbcDriver(@staticPagesJdbcDriver)
        staticPagesDbInitInfo.setName(@staticPagesName)
        staticPagesDbInitInfo.setUserName(@staticPagesUserName)
        staticPagesDbInitInfo.setPassword(@staticPagesPassword)
        staticPagesDbInitInfo.setSchema(@staticPagesSchema)
        staticPagesDbInitInfo.setServer(@staticPagesServer)
        staticPagesDbInitInfo.setPort(@staticPagesPort)
        staticPagesDbInitInfo.setHasRead(true)
        staticPagesDbInitInfo.write()
        inventoryDbInitInfo = ::Org::Allbinary::Business::Init::Db::InventoryDbInitInfo.new(false)
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

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        const_set(:MAXDB, 30)
        const_set(:MAX, 16)
        const_set(:MIN, 4)
        const_set(:MINPASSWORD, 0)
        begin
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "Initializer"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAXDB, :MAX, :MIN, :MINPASSWORD].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :HistoryDbInitInfo, "org/allbinary/business/init/db/HistoryDbInitInfo" unless const_defined?(:HistoryDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :InventoryDbInitInfo, "org/allbinary/business/init/db/InventoryDbInitInfo" unless const_defined?(:InventoryDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :LogDbInitInfo, "org/allbinary/business/init/db/LogDbInitInfo" unless const_defined?(:LogDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :StaticPagesDbInitInfo, "org/allbinary/business/init/db/StaticPagesDbInitInfo" unless const_defined?(:StaticPagesDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :UserDbInitInfo, "org/allbinary/business/init/db/UserDbInitInfo" unless const_defined?(:UserDbInitInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :InitializerData, "org/allbinary/business/installer/InitializerData" unless const_defined?(:InitializerData, false)

begin
    Initializer.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

