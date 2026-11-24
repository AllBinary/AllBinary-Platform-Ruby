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

require "java/lang/JavaOverload"
require "java/lang/JavaClass"
require "org/allbinary/business/init/db/DatabaseConnectionInfoInterface"

module ::Org; module Allbinary; module Business; module Init; module Db

class DbConnectionInfo
    include DatabaseConnectionInfoInterface
    attr_accessor :jdbcDriver, :name, :userName, :password, :schema, :server, :port, :url, :host, :SCHEMA_SEP, :USER_NAME_KEY, :PASSWORD_KEY

    def jfields_org_allbinary_business_init_db_DbConnectionInfo
        @jdbcDriver = nil unless instance_variable_defined?(:@jdbcDriver)
        @name = nil unless instance_variable_defined?(:@name)
        @userName = nil unless instance_variable_defined?(:@userName)
        @password = nil unless instance_variable_defined?(:@password)
        @schema = nil unless instance_variable_defined?(:@schema)
        @server = nil unless instance_variable_defined?(:@server)
        @port = nil unless instance_variable_defined?(:@port)
        @url = nil unless instance_variable_defined?(:@url)
        @host = nil unless instance_variable_defined?(:@host)
        @SCHEMA_SEP = "://"
        @USER_NAME_KEY = "?user="
        @PASSWORD_KEY = "&password="
    end
    

    def initialize()
        jfields_org_allbinary_business_init_db_DbConnectionInfo
    end
    

    def updateUrl()
        self.updateHost()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.getHost())
        stringBuffer.append(self.getName())
        stringBuffer.append(self.getUserNameKey())
        stringBuffer.append(self.getUserName())
        stringBuffer.append(self.getPasswordKey())
        stringBuffer.append(self.getPassword())
        @url = stringBuffer.to_s
    end
    java_overload :updateUrl, 0
    

    def getUrl()
        return @url
    end
    java_overload :getUrl, 0
    

    def getJdbcDriver()
        return @jdbcDriver
    end
    java_overload :getJdbcDriver, 0
    

    def getName()
        return @name
    end
    java_overload :getName, 0
    

    def getUserName()
        return @userName
    end
    java_overload :getUserName, 0
    

    def getPassword()
        return @password
    end
    java_overload :getPassword, 0
    

    def updateHost()
        stringBuffer = ::Org::Allbinary::Logic::StringPackage::StringMaker.new()
        stringBuffer.append(self.getSchema())
        stringBuffer.append(@SCHEMA_SEP)
        stringBuffer.append(self.getServer())
        if self.getPort() != nil && self.getPort().length() > 1
            stringBuffer.append(::Org::Allbinary::StringPackage::CommonSeps.getInstance().COLON)
            stringBuffer.append(self.getPort())
        end
        stringBuffer.append(::Org::Allbinary::Logic::Io::Path::AbPathData.getInstance().SEPARATOR)
        @host = stringBuffer.to_s
    end
    java_overload :updateHost, 0
    

    def getHost()
        return @host
    end
    java_overload :getHost, 0
    

    def getSchema()
        return @schema
    end
    java_overload :getSchema, 0
    

    def getServer()
        return @server
    end
    java_overload :getServer, 0
    

    def getPort()
        return @port
    end
    java_overload :getPort, 0
    

    def setJdbcDriver(value)
        @jdbcDriver = value
    end
    java_overload :setJdbcDriver, 1
    

    def setName(value)
        @name = value
        self.updateUrl()
    end
    java_overload :setName, 1
    

    def setUserName(value)
        @userName = value
        self.updateUrl()
    end
    java_overload :setUserName, 1
    

    def setPassword(value)
        @password = value
        self.updateUrl()
    end
    java_overload :setPassword, 1
    

    def setSchema(value)
        @schema = value
        self.updateUrl()
    end
    java_overload :setSchema, 1
    

    def setServer(value)
        @server = value
        self.updateUrl()
    end
    java_overload :setServer, 1
    

    def setPort(value)
        @port = value
        self.updateUrl()
    end
    java_overload :setPort, 1
    

    def getUserNameKey()
        return @USER_NAME_KEY
    end
    java_overload :getUserNameKey, 0
    

    def getPasswordKey()
        return @PASSWORD_KEY
    end
    java_overload :getPasswordKey, 0
end

module ::Org; module Allbinary; module Logic; module Io; module Path; autoload :AbPathData, "org/allbinary/logic/io/path/AbPathData" unless const_defined?(:AbPathData, false); end; end; end; end; end
module ::Org; module Allbinary; module Logic; module StringPackage; autoload :StringMaker, "org/allbinary/logic/string/StringMaker" unless const_defined?(:StringMaker, false); end; end; end; end
module ::Org; module Allbinary; module StringPackage; autoload :CommonSeps, "org/allbinary/string/CommonSeps" unless const_defined?(:CommonSeps, false); end; end; end

end; end; end; end; end

