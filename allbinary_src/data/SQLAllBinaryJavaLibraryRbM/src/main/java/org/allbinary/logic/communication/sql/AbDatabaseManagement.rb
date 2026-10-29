# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.communication.sql

# require "java/net/InetAddress"
require "org/allbinary/logic/communication/sql/AbSqlBean"

class AbDatabaseManagement < AbSqlBean
    attr_accessor :logUtil, :commonStrings, :sqlCommandLog, :GRANT_ALL, :DOT_STAR, :TO, :AT_LOCALHOST, :IDENTIFIED_BY, :WITH_GRANT_OPTION, :FAILED, :GET_HOST_NAME, :METHOD_ADD_USER, :METHOD_ADD_USERS, :METHOD_ADD_DB, :METHOD_ADD_DATABASES, :METHOD_ADD_TABLES, :UNABLE_TO_CREATE_USER, :UNABLE_TO_CREATE_DATABASE, :UNABLE_TO_CREATE_TABLES, :ADD_TABLES_RESULTS_LABEL

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @commonStrings = CommonStrings.getInstance()
        @sqlCommandLog = StringMaker.new()
        @GRANT_ALL = "GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER ON "
        @DOT_STAR = ".*"
        @TO = " TO "
        @AT_LOCALHOST = "@localhost"
        @IDENTIFIED_BY = " IDENTIFIED BY '"
        @WITH_GRANT_OPTION = "' WITH GRANT OPTION"
        @FAILED = "Failed"
        @GET_HOST_NAME = "getHostName()"
        @METHOD_ADD_USER = "addUser()"
        @METHOD_ADD_USERS = "addUsers()"
        @METHOD_ADD_DB = "addDb()"
        @METHOD_ADD_DATABASES = "addDatabases()"
        @METHOD_ADD_TABLES = "addTables()"
        @UNABLE_TO_CREATE_USER = "Unable to Create User: "
        @UNABLE_TO_CREATE_DATABASE = "Unable to Create Database: "
        @UNABLE_TO_CREATE_TABLES = "Unable to Create Tables"
        @ADD_TABLES_RESULTS_LABEL = "Add Table Results: "
    end

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 1 then constructor1(*args)
        end
    end
    

    def constructor1(databaseConnectionInfoInterface)
        method(:initialize).super_method.call(databaseConnectionInfoInterface)
        initialize_fields
    end
    

    def constructor1(connectionInfo)
        method(:initialize).super_method.call(connectionInfo)
        initialize_fields
    end
    

    def getHostName()
        begin
            addr = InetAddress.getLocalHost()
            return addr.getHostName()
        rescue StandardError => e
            @logUtil.put(@FAILED, self, @GET_HOST_NAME, e)
            return nil
        end
    end
    

    # throws Exception
    def addDbUser(hostName, db, userName, password)
        stringBuffer = StringMaker.new()
        stringBuffer.append(@GRANT_ALL)
        stringBuffer.append(db)
        stringBuffer.append(@DOT_STAR)
        stringBuffer.append(@TO)
        stringBuffer.append(userName)
        stringBuffer.append(hostName)
        stringBuffer.append(@IDENTIFIED_BY)
        stringBuffer.append(password)
        stringBuffer.append(@WITH_GRANT_OPTION)
        sqlStatement = stringBuffer.to_s
        @sqlCommandLog.append(sqlStatement)
        @sqlCommandLog.append(@commonSeps.NEW_LINE)
        self.class.superclass.instance_method(:executeSQLStatement).bind(self).call(sqlStatement)
        return true
    end
    

    # Java overloaded method: Ruby keeps the last definition
    def addDbUser(db, userName, password)
        begin
            self.addDbUser(@AT_LOCALHOST, db, userName, password)
            hostName = self.getHostName()
            if hostName != nil
                self.addDbUser(hostName, db, userName, password)
            end
            return true
        rescue StandardError => e
            @logUtil.put(@UNABLE_TO_CREATE_USER + userName, self, @METHOD_ADD_USER, e)
            return false
        end
    end
    

    def addDb(db)
        begin
            sqlStatement = (@sqlStrings.CREATE_DATABASE).to_s + db
            @sqlCommandLog.append(sqlStatement)
            @sqlCommandLog.append(@commonSeps.NEW_LINE)
            self.class.superclass.instance_method(:executeSQLStatement).bind(self).call(sqlStatement)
            return true
        rescue StandardError => e
            @logUtil.put(@UNABLE_TO_CREATE_DATABASE + db, self, @METHOD_ADD_DB, e)
            return false
        end
    end
end

require "org/allbinary/business/init/db/DatabaseConnectionInfoInterface"
require "org/allbinary/business/init/db/DbConnectionInfo"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonStrings"

