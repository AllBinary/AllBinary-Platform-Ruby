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

#Warning you must have sql root access
class InitDb
    attr_accessor :anyType, :METHOD_CALL_GET_HOST_NAME, :METHOD_CALL_ADD_USERS, :METHOD_CALL_ADD_DATABASES, :METHOD_CALL_ADD_TABLES, :METHOD_CALL_TEMP_MAIN_PATH, :METHOD_CALL_MAIN_PATH

    def initialize_fields
        @anyType = nil
        @METHOD_CALL_GET_HOST_NAME = "getHostName"
        @METHOD_CALL_ADD_USERS = "addUsers"
        @METHOD_CALL_ADD_DATABASES = "addDatabases"
        @METHOD_CALL_ADD_TABLES = "addTables"
        @METHOD_CALL_TEMP_MAIN_PATH = "useTemporaryMainPath"
        @METHOD_CALL_MAIN_PATH = "useNormalMainPath"
    end

    def initialize(*args)
        case args.length
        when 0 then constructor0(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor0()
        initialize_fields
    end
    

    def constructor1(dbConnectionInfo)
        initialize_fields
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

require "org/allbinary/business/init/db/DbConnectionInfo"
require "org/allbinary/logic/system/security/licensing/LicensingException"

