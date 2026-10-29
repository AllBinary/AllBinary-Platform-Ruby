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
# package org.allbinary.business.init.db

require "org/allbinary/business/init/db/DatabaseConnectionInfoInterface"

class DbConnectionInfo
    include DatabaseConnectionInfoInterface
    attr_accessor :jdbcDriver, :name, :userName, :password, :schema, :server, :port, :url, :host, :SCHEMA_SEP, :USER_NAME_KEY, :PASSWORD_KEY

    def initialize_fields
        @jdbcDriver = nil
        @name = nil
        @userName = nil
        @password = nil
        @schema = nil
        @server = nil
        @port = nil
        @url = nil
        @host = nil
        @SCHEMA_SEP = "://"
        @USER_NAME_KEY = "?user="
        @PASSWORD_KEY = "&password="
    end
    

    def initialize()
        initialize_fields
    end
    

    def updateUrl()
        self.updateHost()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.getHost())
        stringBuffer.append(self.getName())
        stringBuffer.append(self.getUserNameKey())
        stringBuffer.append(self.getUserName())
        stringBuffer.append(self.getPasswordKey())
        stringBuffer.append(self.getPassword())
        @url = stringBuffer.to_s
    end
    

    def getUrl()
        return @url
    end
    

    def getJdbcDriver()
        return @jdbcDriver
    end
    

    def getName()
        return @name
    end
    

    def getUserName()
        return @userName
    end
    

    def getPassword()
        return @password
    end
    

    def updateHost()
        stringBuffer = StringMaker.new()
        stringBuffer.append(self.getSchema())
        stringBuffer.append(@SCHEMA_SEP)
        stringBuffer.append(self.getServer())
        if self.getPort() != nil && self.getPort().length() > 1
            stringBuffer.append(CommonSeps.getInstance().COLON)
            stringBuffer.append(self.getPort())
        end
        stringBuffer.append(AbPathData.getInstance().SEPARATOR)
        @host = stringBuffer.to_s
    end
    

    def getHost()
        return @host
    end
    

    def getSchema()
        return @schema
    end
    

    def getServer()
        return @server
    end
    

    def getPort()
        return @port
    end
    

    def setJdbcDriver(value)
        @jdbcDriver = value
    end
    

    def setName(value)
        @name = value
        self.updateUrl()
    end
    

    def setUserName(value)
        @userName = value
        self.updateUrl()
    end
    

    def setPassword(value)
        @password = value
        self.updateUrl()
    end
    

    def setSchema(value)
        @schema = value
        self.updateUrl()
    end
    

    def setServer(value)
        @server = value
        self.updateUrl()
    end
    

    def setPort(value)
        @port = value
        self.updateUrl()
    end
    

    def getUserNameKey()
        return @USER_NAME_KEY
    end
    

    def getPasswordKey()
        return @PASSWORD_KEY
    end
end

require "org/allbinary/logic/io/path/AbPathData"
require "org/allbinary/logic/string/StringMaker"
require "org/allbinary/string/CommonSeps"

