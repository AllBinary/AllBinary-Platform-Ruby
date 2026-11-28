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


module ::Org; module Allbinary; module Business; module Installer

class InitializerData
    attr_accessor :DBUSER, :DBPASSWORD, :ADMINJDBCDRIVER, :ADMINSCHEMA, :ADMINSERVER, :ADMINPORT, :CUSTOMERJDBCDRIVER, :CUSTOMERNAME, :CUSTOMERUSERNAME, :CUSTOMERPASSWORD, :CUSTOMERSCHEMA, :CUSTOMERSERVER, :CUSTOMERPORT, :HISTORYJDBCDRIVER, :HISTORYNAME, :HISTORYUSERNAME, :HISTORYPASSWORD, :HISTORYSCHEMA, :HISTORYSERVER, :HISTORYPORT, :LOGJDBCDRIVER, :LOGNAME, :LOGUSERNAME, :LOGPASSWORD, :LOGSCHEMA, :LOGSERVER, :LOGPORT, :INVENTORYJDBCDRIVER, :INVENTORYNAME, :INVENTORYUSERNAME, :INVENTORYPASSWORD, :INVENTORYSCHEMA, :INVENTORYSERVER, :INVENTORYPORT, :STATICPAGESJDBCDRIVER, :STATICPAGESNAME, :STATICPAGESUSERNAME, :STATICPAGESPASSWORD, :STATICPAGESSCHEMA, :STATICPAGESSERVER, :STATICPAGESPORT

    def jfields_org_allbinary_business_installer_InitializerData
        @DBUSER = "DBUSER"
        @DBPASSWORD = "DBPASSWORD"
        @ADMINJDBCDRIVER = "ADMIN_JDBCDRIVER"
        @ADMINSCHEMA = "ADMINSCHEMA"
        @ADMINSERVER = "ADMINSERVER"
        @ADMINPORT = "ADMINPORT"
        @CUSTOMERJDBCDRIVER = "CUSTOMER_JDBCDRIVER"
        @CUSTOMERNAME = "CUSTOMERNAME"
        @CUSTOMERUSERNAME = "CUSTOMERUSERNAME"
        @CUSTOMERPASSWORD = "CUSTOMERPASSWORD"
        @CUSTOMERSCHEMA = "CUSTOMERSCHEMA"
        @CUSTOMERSERVER = "CUSTOMERSERVER"
        @CUSTOMERPORT = "CUSTOMERPORT"
        @HISTORYJDBCDRIVER = "HISTORY_JDBCDRIVER"
        @HISTORYNAME = "HISTORYNAME"
        @HISTORYUSERNAME = "HISTORYUSERNAME"
        @HISTORYPASSWORD = "HISTORYPASSWORD"
        @HISTORYSCHEMA = "HISTORYSCHEMA"
        @HISTORYSERVER = "HISTORYSERVER"
        @HISTORYPORT = "HISTORYPORT"
        @LOGJDBCDRIVER = "LOG_JDBCDRIVER"
        @LOGNAME = "LOGNAME"
        @LOGUSERNAME = "LOGUSERNAME"
        @LOGPASSWORD = "LOGPASSWORD"
        @LOGSCHEMA = "LOGSCHEMA"
        @LOGSERVER = "LOGSERVER"
        @LOGPORT = "LOGPORT"
        @INVENTORYJDBCDRIVER = "INVENTORY_JDBCDRIVER"
        @INVENTORYNAME = "INVENTORYNAME"
        @INVENTORYUSERNAME = "INVENTORYUSERNAME"
        @INVENTORYPASSWORD = "INVENTORYPASSWORD"
        @INVENTORYSCHEMA = "INVENTORYSCHEMA"
        @INVENTORYSERVER = "INVENTORYSERVER"
        @INVENTORYPORT = "INVENTORYPORT"
        @STATICPAGESJDBCDRIVER = "STATICPAGES_JDBCDRIVER"
        @STATICPAGESNAME = "STATICPAGESNAME"
        @STATICPAGESUSERNAME = "STATICPAGESUSERNAME"
        @STATICPAGESPASSWORD = "STATICPAGESPASSWORD"
        @STATICPAGESSCHEMA = "STATICPAGESSCHEMA"
        @STATICPAGESSERVER = "STATICPAGESSERVER"
        @STATICPAGESPORT = "STATICPAGESPORT"
    end

    def initialize
        jfields_org_allbinary_business_installer_InitializerData
    end
    

    def self.getInstance()
        return @@instance
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

    def self.instance()
        InitializerData.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        InitializerData.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = InitializerData.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "InitializerData"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end

begin
    InitializerData.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end

