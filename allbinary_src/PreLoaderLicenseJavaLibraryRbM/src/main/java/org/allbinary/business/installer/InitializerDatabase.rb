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

class InitializerDatabase
    attr_accessor :logUtil, :adminDbUserName, :adminDbPassword, :adminJdbcDriver, :adminSchema, :adminServer, :adminPort, :initDb

    def jfields_org_allbinary_business_installer_InitializerDatabase
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @adminDbUserName = nil unless instance_variable_defined?(:@adminDbUserName)
        @adminDbPassword = nil unless instance_variable_defined?(:@adminDbPassword)
        @adminJdbcDriver = nil unless instance_variable_defined?(:@adminJdbcDriver)
        @adminSchema = nil unless instance_variable_defined?(:@adminSchema)
        @adminServer = nil unless instance_variable_defined?(:@adminServer)
        @adminPort = nil unless instance_variable_defined?(:@adminPort)
        @initDb = nil unless instance_variable_defined?(:@initDb)
    end

    def initialize(*args)
        case args.length
        when 2 then jnew_org_allbinary_business_installer_InitializerDatabase_2(*args)
        else raise ArgumentError, "No constructor of InitializerDatabase takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_business_installer_InitializerDatabase_2(*java_overload_args)
        return jnew_org_allbinary_business_installer_InitializerDatabase_2_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Logic::System::Security::Licensing::AbeClientInformationInterface)) && !(java_overload_args[1].is_a?(::Numeric) || java_overload_args[1] == true || java_overload_args[1] == false || java_overload_args[1].is_a?(::Array))
        return jnew_org_allbinary_business_installer_InitializerDatabase_2_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_business_installer_InitializerDatabase_2_1(abeClientInformation, map)
        jfields_org_allbinary_business_installer_InitializerDatabase
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
        self.getFormData(abeClientInformation, hashMap)
    end
    

    def jnew_org_allbinary_business_installer_InitializerDatabase_2_2(abeClientInformation, initHashMap)
        jfields_org_allbinary_business_installer_InitializerDatabase
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
            dbConnectionInfo = ::Org::Allbinary::Business::Init::Db::DbConnectionInfo.new()
            adminDbName = ::Org::Allbinary::Logic::StringPackage::StringUtil.getInstance().EMPTY_STRING
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
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().PRELOADERERROR)
                commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
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
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        if !stringValidationUtil.isValidRequired(@adminDbUserName, MIN, MAX)
            isValid = false
        end
        if !stringValidationUtil.isValidNotRequired(@adminDbPassword, MINPASSWORD, MAX)
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
    

    def getInvalidInfo()
        isValid = true
        isJdbcDriversValid = true
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        if !self.isJdbcDriverValid(@adminJdbcDriver)
            isJdbcDriversValid = false
            stringBuffer.append(self.getJdbcDriverValidationInfo(self.getAdminJdbcDriver()))
        end
        stringValidationUtil = ::Org::Allbinary::Logic::StringPackage::StringValidationUtil.getInstance()
        if !stringValidationUtil.isValidRequired(@adminDbUserName, MIN, MAX)
            stringBuffer.append("Admin username should be < " + (MAX).to_s + " and > " + (MIN).to_s + " characters in length.<br />")
        end
        if !stringValidationUtil.isValidNotRequired(@adminDbPassword, MINPASSWORD, MAX)
            stringBuffer.append("Admin password should be < " + (MAX).to_s + " and > " + (MINPASSWORD).to_s + " characters in length.<br />")
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
        if name == "InitializerDatabase"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [:MAXDB, :MAX, :MIN, :MINPASSWORD].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DatabaseConnectionInfoInterface, "org/allbinary/business/init/db/DatabaseConnectionInfoInterface" unless const_defined?(:DatabaseConnectionInfoInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringUtil, "org/allbinary/logic/string/StringUtil" unless const_defined?(:StringUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringValidationUtil, "org/allbinary/logic/string/StringValidationUtil" unless const_defined?(:StringValidationUtil, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :AbeClientInformationInterface, "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface" unless const_defined?(:AbeClientInformationInterface, false); end; end; end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end
autoload :DynamicInitDb, "org/allbinary/business/installer/DynamicInitDb" unless const_defined?(:DynamicInitDb, false)
autoload :InitializerData, "org/allbinary/business/installer/InitializerData" unless const_defined?(:InitializerData, false)

begin
    InitializerDatabase.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

