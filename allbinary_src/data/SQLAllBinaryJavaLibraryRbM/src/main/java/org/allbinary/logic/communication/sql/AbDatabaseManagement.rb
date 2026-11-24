# 
# To change this license header, choose License Headers in Project Properties. 
# To change this template file, choose Tools | Templates 
# and open the template in the editor.  
# Generated Code Do Not Modify
# frozen_string_literal: false
# package org.allbinary.logic.communication.sql

require "java/lang/JavaOverload"
# require "java/net/InetAddress"
require "org/allbinary/logic/communication/sql/AbSqlBean"

module ::Org; module Allbinary; module Logic; module Communication; module Sql

class AbDatabaseManagement < AbSqlBean
    attr_accessor :logUtil, :commonStrings, :sqlCommandLog, :GRANT_ALL, :DOT_STAR, :TO, :AT_LOCALHOST, :IDENTIFIED_BY, :WITH_GRANT_OPTION, :FAILED, :GET_HOST_NAME, :METHOD_ADD_USER, :METHOD_ADD_USERS, :METHOD_ADD_DB, :METHOD_ADD_DATABASES, :METHOD_ADD_TABLES, :UNABLE_TO_CREATE_USER, :UNABLE_TO_CREATE_DATABASE, :UNABLE_TO_CREATE_TABLES, :ADD_TABLES_RESULTS_LABEL

    def jfields_org_allbinary_logic_communication_sql_AbDatabaseManagement
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @commonStrings = ::Org::Allbinary::StringPackage::CommonStrings.getInstance()
        @sqlCommandLog = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        when 1 then jnew_org_allbinary_logic_communication_sql_AbDatabaseManagement_1(*args)
        else raise ArgumentError, "No constructor of AbDatabaseManagement takes #{args.length} arguments"
        end
    end

    def jnew_org_allbinary_logic_communication_sql_AbDatabaseManagement_1(*java_overload_args)
        return jnew_org_allbinary_logic_communication_sql_AbDatabaseManagement_1_1(*java_overload_args) if true && (java_overload_args[0].nil? || java_overload_args[0].is_a?(::Org::Allbinary::Business::Init::Db::DatabaseConnectionInfoInterface))
        return jnew_org_allbinary_logic_communication_sql_AbDatabaseManagement_1_2(*java_overload_args)
    end
    

    def jnew_org_allbinary_logic_communication_sql_AbDatabaseManagement_1_1(databaseConnectionInfoInterface)
        AbDatabaseManagement.superclass.instance_method(:initialize).bind(self).call(databaseConnectionInfoInterface)
        jfields_org_allbinary_logic_communication_sql_AbDatabaseManagement
    end
    

    def jnew_org_allbinary_logic_communication_sql_AbDatabaseManagement_1_2(connectionInfo)
        AbDatabaseManagement.superclass.instance_method(:initialize).bind(self).call(connectionInfo)
        jfields_org_allbinary_logic_communication_sql_AbDatabaseManagement
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
    java_overload :getHostName, 0
    

    # throws Exception
    def addDbUser_j4(hostName, db, userName, password)
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
        AbDatabaseManagement.superclass.java_super_method(:executeSQLStatement, 1).bind(self).call(sqlStatement)
        return true
    end
    

    def addDbUser_j3(db, userName, password)
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

    def addDbUser(*java_overload_args)
        return addDbUser_j4(*java_overload_args) if java_overload_args.length == 4
        return addDbUser_j3(*java_overload_args) if java_overload_args.length == 3
        raise ArgumentError, "No method addDbUser takes #{java_overload_args.length} arguments"
    end
    

    def addDb(db)
        begin
            sqlStatement = (@sqlStrings.CREATE_DATABASE).to_s + db
            @sqlCommandLog.append(sqlStatement)
            @sqlCommandLog.append(@commonSeps.NEW_LINE)
            AbDatabaseManagement.superclass.java_super_method(:executeSQLStatement, 1).bind(self).call(sqlStatement)
            return true
        rescue StandardError => e
            @logUtil.put(@UNABLE_TO_CREATE_DATABASE + db, self, @METHOD_ADD_DB, e)
            return false
        end
    end
    java_overload :addDb, 1
end

module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DatabaseConnectionInfoInterface, "org/allbinary/business/init/db/DatabaseConnectionInfoInterface" unless const_defined?(:DatabaseConnectionInfoInterface, false); end; end; end; end; end
module ::Org; module Allbinary; module Business; module Init; module Db; autoload :DbConnectionInfo, "org/allbinary/business/init/db/DbConnectionInfo" unless const_defined?(:DbConnectionInfo, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonStrings, "org/allbinary/string/CommonStrings" unless const_defined?(:CommonStrings, false); end; end; end

end; end; end; end; end

