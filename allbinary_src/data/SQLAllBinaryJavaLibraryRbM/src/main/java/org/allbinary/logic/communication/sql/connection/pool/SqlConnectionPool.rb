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
# package org.allbinary.logic.communication.sql.connection.pool

require "java/lang/Object"
# require "java/sql/Connection"
# require "java/sql/DriverManager"
# require "java/sql/SQLException"

class SqlConnectionPool
    attr_accessor :logUtil, :stdUtil, :connectionHashMap, :FIRST_NEW_CONNECTION_CREATED, :FIRST, :NEW_CONNECTION_FOR, :CREATED, :NUMBER_OF_SQL_CONNECTIONS_FOR, :NUMBER_OF_SQL_CONNECTION_VECTORS, :IS, :CONNECTION_ALLREADY_CLOSED, :METHOD_GET, :METHOD_ADD

    def initialize_fields
        @logUtil = LogUtil.getInstance()
        @stdUtil = StdUtil.getInstance()
        @connectionHashMap = nil
        @FIRST_NEW_CONNECTION_CREATED = "First New Connection Created: "
        @FIRST = "First "
        @NEW_CONNECTION_FOR = "New Connection For "
        @CREATED = " Created"
        @NUMBER_OF_SQL_CONNECTIONS_FOR = "Number Of Sql Connections for: "
        @NUMBER_OF_SQL_CONNECTION_VECTORS = "Number Of Sql Connection Vectors: "
        @IS = " is "
        @CONNECTION_ALLREADY_CLOSED = "Connection AllReady Closed"
        @METHOD_GET = "get()"
        @METHOD_ADD = "add()"
    end
    

    def self.getInstance()
        return SqlConnectionPool.instance
    end
    

    def initialize()
        initialize_fields
    end
    

    # throws SQLException
    def get(url)
        java_monitor.synchronize do
        if @connectionHashMap == nil
            @connectionHashMap = @stdUtil.createHashMap()
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
                @logUtil.putF(@FIRST_NEW_CONNECTION_CREATED + url, self, @METHOD_GET)
            end
            return DriverManager.getConnection(url)
        else
            connectionVector = @connectionHashMap.get(url)
            if connectionVector == nil
                connectionVector = BasicArrayListD.new()
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
                    stringBuffer = StringMaker.new()
                    stringBuffer.append(@FIRST)
                    stringBuffer.append(@NEW_CONNECTION_FOR)
                    stringBuffer.append(url)
                    stringBuffer.append(@CREATED)
                    @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET)
                end
                return DriverManager.getConnection(url)
            elsif connectionVector.size() == 0
                if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
                    @logUtil.putF(StringMaker.new().append(@NEW_CONNECTION_FOR).append(url).append(@CREATED).to_s, self, @METHOD_GET)
                end
                return DriverManager.getConnection(url)
            else
                stringBuffer = StringMaker.new()
                size = connectionVector.size()
                (0...size).each do |i|
                    sqlConnection = connectionVector.get(i)
                    if !sqlConnection.isClosed()
                        connectionVector.remove(sqlConnection)
                        @connectionHashMap.put(url, connectionVector)
                        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
                            stringBuffer.delete(0, stringBuffer.length())
                            stringBuffer.append(@NUMBER_OF_SQL_CONNECTIONS_FOR)
                            stringBuffer.append(url)
                            stringBuffer.append(@IS)
                            stringBuffer.appendint(connectionVector.size())
                            @logUtil.putF(@NUMBER_OF_SQL_CONNECTION_VECTORS + (@connectionHashMap.size()).to_s, self, @METHOD_GET)
                            @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET)
                        end
                        return sqlConnection
                    end
                end
            end
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
            stringBuffer = StringMaker.new()
            stringBuffer.append(@NEW_CONNECTION_FOR)
            stringBuffer.append(url)
            stringBuffer.append(@CREATED)
            @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET)
        end
        return DriverManager.getConnection(url)
        end
    end
    

    # throws SQLException
    def add(url, sqlConnection)
        java_monitor.synchronize do
        if !sqlConnection.isClosed()
            connectionVector = nil
            if @connectionHashMap == nil
                @connectionHashMap = @stdUtil.createHashMap()
                connectionVector = BasicArrayListD.new()
                connectionVector.add(sqlConnection)
            else
                connectionVector = @connectionHashMap.get(url)
                if connectionVector == nil
                    connectionVector = BasicArrayListD.new()
                end
                connectionVector.add(sqlConnection)
                @connectionHashMap.put(url, connectionVector)
            end
            if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
                stringBuffer = StringMaker.new()
                stringBuffer.append(@NUMBER_OF_SQL_CONNECTIONS_FOR)
                stringBuffer.append(url)
                stringBuffer.append(@IS)
                stringBuffer.appendint(connectionVector.size())
                @logUtil.putF(@NUMBER_OF_SQL_CONNECTION_VECTORS + (@connectionHashMap.size()).to_s, self, @METHOD_ADD)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_ADD)
            end
        end
        if org.allbinary.logic.communication.log.config.type.LogConfigTypes.LOGGING.contains(org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
            @logUtil.putF(@CONNECTION_ALLREADY_CLOSED, self, @METHOD_ADD)
        end
        end
    end

    def self.instance()
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        @@instance = value
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/log/LogUtil"
require "org/allbinary/logic/string/StringMaker"

class SqlConnectionPool
    @@instance = SqlConnectionPool.new()
end

