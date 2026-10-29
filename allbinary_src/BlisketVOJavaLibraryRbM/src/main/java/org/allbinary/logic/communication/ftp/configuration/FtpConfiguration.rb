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
# package org.allbinary.logic.communication.ftp.configuration

require "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationInterface"

class FtpConfiguration
    include FtpConfigurationInterface
    attr_accessor :ftpServer, :ftpPath, :ftpUserName, :ftpPassword

    def initialize_fields
        @ftpServer = nil
        @ftpPath = nil
        @ftpUserName = nil
        @ftpPassword = nil
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
    

    def constructor1(hashMap)
        initialize_fields
        @ftpServer = hashMap.get(FtpConfigurationData::SERVER)
        @ftpPath = hashMap.get(FtpConfigurationData::PATH)
        @ftpUserName = hashMap.get(FtpConfigurationData::USERNAME)
        @ftpPassword = hashMap.get(FtpConfigurationData::PASSWORD)
    end
    

    def getServer()
        return @ftpServer
    end
    

    def getPath()
        return @ftpPath
    end
    

    def getUserName()
        return @ftpUserName
    end
    

    def getPassword()
        return @ftpPassword
    end
    

    def setServer(value)
        @ftpServer = value
    end
    

    def setPath(value)
        @ftpPath = value
    end
    

    def setUserName(value)
        @ftpUserName = value
    end
    

    def setPassword(value)
        @ftpPassword = value
    end
end

require "java/util/HashMap"
require "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationData"

