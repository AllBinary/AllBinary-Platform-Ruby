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

# require "java/lang/reflect/Method"

module ::Org; module Allbinary; module Business; module Installer

#Warning you must have sql root access
class InitDb
    attr_accessor :anyType, :METHOD_CALL_GET_HOST_NAME, :METHOD_CALL_ADD_USERS, :METHOD_CALL_ADD_DATABASES, :METHOD_CALL_ADD_TABLES, :METHOD_CALL_TEMP_MAIN_PATH, :METHOD_CALL_MAIN_PATH

    def jfields_org_allbinary_business_installer_InitDb
        @anyType = nil unless instance_variable_defined?(:@anyType)
        @METHOD_CALL_GET_HOST_NAME = "getHostName"
        @METHOD_CALL_ADD_USERS = "addUsers"
        @METHOD_CALL_ADD_DATABASES = "addDatabases"
        @METHOD_CALL_ADD_TABLES = "addTables"
        @METHOD_CALL_TEMP_MAIN_PATH = "useTemporaryMainPath"
        @METHOD_CALL_MAIN_PATH = "useNormalMainPath"
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_business_installer_InitDb_0(*args)
        when 1 then jnew_org_allbinary_business_installer_InitDb_1(*args)
        else raise ArgumentError, "No constructor of InitDb takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_business_installer_InitDb_0()
        jfields_org_allbinary_business_installer_InitDb
    end
    

    def jnew_org_allbinary_business_installer_InitDb_1(dbConnectionInfo)
        jfields_org_allbinary_business_installer_InitDb
    end
    

    def setHelper(anyType)
        @anyType = anyType
    end
    

    def getHelper()
        return @anyType
    end
    

    def getHostName()
        begin
            dynamicClass = @anyType.class
            method = dynamicClass.getMethod(@METHOD_CALL_GET_HOST_NAME, nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            return nil
        end
    end
    

    def addUsers()
        begin
            dynamicClass = @anyType.class
            method = dynamicClass.getMethod(@METHOD_CALL_ADD_USERS, nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            return false
        end
    end
    

    def addDatabases()
        begin
            dynamicClass = @anyType.class
            method = dynamicClass.getMethod(@METHOD_CALL_ADD_DATABASES, nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            return false
        end
    end
    

    def addTables()
        begin
            dynamicClass = @anyType.class
            method = dynamicClass.getMethod(@METHOD_CALL_ADD_TABLES, nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            return false
        end
    end
    

    def useTemporaryMainPath()
        begin
            dynamicClass = @anyType.class
            method = dynamicClass.getMethod(@METHOD_CALL_TEMP_MAIN_PATH, nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            return false
        end
    end
    

    def useNormalMainPath()
        begin
            dynamicClass = @anyType.class
            method = dynamicClass.getMethod(@METHOD_CALL_MAIN_PATH, nil)
            result = method.invoke(@anyType, nil)
            return result
        rescue StandardError => e
            return false
        end
    end
end

module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module System; module Security; module Licensing; autoload :LicensingException, "org/allbinary/logic/system/security/licensing/LicensingException" unless const_defined?(:LicensingException, false); end; end; end; end; end; end

end; end; end; end

