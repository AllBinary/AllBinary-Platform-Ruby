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

module ::Org; module Allbinary; module Logic; module Communication; module Sql; module Connection; module Pool

class SqlConnectionPool
    attr_accessor :logUtil, :stdUtil, :connectionHashMap, :FIRST_NEW_CONNECTION_CREATED, :FIRST, :NEW_CONNECTION_FOR, :CREATED, :NUMBER_OF_SQL_CONNECTIONS_FOR, :NUMBER_OF_SQL_CONNECTION_VECTORS, :IS, :CONNECTION_ALLREADY_CLOSED, :METHOD_GET, :METHOD_ADD

    def jfields_org_allbinary_logic_communication_sql_connection_pool_SqlConnectionPool
        @logUtil = ::Org::Allbinary::Logic::Communication::Log::LogUtil.getInstance()
        @stdUtil = ::Org::Allbinary::Logic::StdUtil.getInstance()
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
        jfields_org_allbinary_logic_communication_sql_connection_pool_SqlConnectionPool
    end
    

    # throws SQLException
    def get(url)
        java_monitor.synchronize do
        if @connectionHashMap == nil
            @connectionHashMap = @stdUtil.createHashMap()
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
                @logUtil.putF(@FIRST_NEW_CONNECTION_CREATED + url, self, @METHOD_GET)
            end
            return DriverManager.getConnection(url)
        else
            connectionVector = @connectionHashMap.get(url)
            if connectionVector == nil
                connectionVector = ::Org::Allbinary::Util::BasicArrayListD.new()
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
                    stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                    stringBuffer.append(@FIRST)
                    stringBuffer.append(@NEW_CONNECTION_FOR)
                    stringBuffer.append(url)
                    stringBuffer.append(@CREATED)
                    @logUtil.putF(stringBuffer.to_s, self, @METHOD_GET)
                end
                return DriverManager.getConnection(url)
            elsif connectionVector.size() == 0
                if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
                    @logUtil.putF(::Org::Allbinary::Logic::StringPackage::StringMaker.new().append(@NEW_CONNECTION_FOR).append(url).append(@CREATED).to_s, self, @METHOD_GET)
                end
                return DriverManager.getConnection(url)
            else
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                size = connectionVector.size()
                (0...size).each do |i|
                    sqlConnection = connectionVector.get(i)
                    if !sqlConnection.isClosed()
                        connectionVector.remove(sqlConnection)
                        @connectionHashMap.put(url, connectionVector)
                        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
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
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
            stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
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
                connectionVector = ::Org::Allbinary::Util::BasicArrayListD.new()
                connectionVector.add(sqlConnection)
            else
                connectionVector = @connectionHashMap.get(url)
                if connectionVector == nil
                    connectionVector = ::Org::Allbinary::Util::BasicArrayListD.new()
                end
                connectionVector.add(sqlConnection)
                @connectionHashMap.put(url, connectionVector)
            end
            if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
                stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
                stringBuffer.append(@NUMBER_OF_SQL_CONNECTIONS_FOR)
                stringBuffer.append(url)
                stringBuffer.append(@IS)
                stringBuffer.appendint(connectionVector.size())
                @logUtil.putF(@NUMBER_OF_SQL_CONNECTION_VECTORS + (@connectionHashMap.size()).to_s, self, @METHOD_ADD)
                @logUtil.putF(stringBuffer.to_s, self, @METHOD_ADD)
            end
        end
        if ::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypes::LOGGING.contains(::Org::Allbinary::Logic::Communication::Log::Config::Type::LogConfigTypeFactory.getInstance().SQLLOGGINGPOOL)
            @logUtil.putF(@CONNECTION_ALLREADY_CLOSED, self, @METHOD_ADD)
        end
        end
    end

    def self.instance()
        SqlConnectionPool.java_static_fields unless @java_static_fields_started
        return defined?(@@instance) ? @@instance : nil
    end

    def self.instance=(value)
        SqlConnectionPool.java_static_fields unless @java_static_fields_started
        @@instance = value
    end

    def self.java_static_fields
        return if @java_static_fields_started
        @java_static_fields_started = true
        begin
            @@instance = SqlConnectionPool.new()
        rescue StandardError
            @java_static_fields_started = false
            raise
        end
    end

    def self.const_missing(name)
        if name == "SqlConnectionPool"
            java_static_fields unless @java_static_fields_started
            return const_get(name, false) if const_defined?(name, false)
            return nil if [].include?(name)
        end
        super
    end
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayList, "org/allbinary/util/BasicArrayList" unless const_defined?(:BasicArrayList, false); end; end; end
module ::Org; module Allbinary; module Util; autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD" unless const_defined?(:BasicArrayListD, false); end; end; end
module ::Org; module Allbinary; module Logic; autoload :StdUtil, "org/allbinary/logic/StdUtil" unless const_defined?(:StdUtil, false); end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; autoload :LogUtil, "org/allbinary/logic/communication/log/LogUtil" unless const_defined?(:LogUtil, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypeFactory, "org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory" unless const_defined?(:LogConfigTypeFactory, false); end; end; end; end; end; end; end
module ::Org; module Allbinary; module Logic; module Communication; module Log; module Config; module Type; autoload :LogConfigTypes, "org/allbinary/logic/communication/log/config/type/LogConfigTypes" unless const_defined?(:LogConfigTypes, false); end; end; end; end; end; end; end

begin
    SqlConnectionPool.java_static_fields
rescue StandardError
    # Like Java the class is initialized again when it is used
end

end; end; end; end; end; end; end

