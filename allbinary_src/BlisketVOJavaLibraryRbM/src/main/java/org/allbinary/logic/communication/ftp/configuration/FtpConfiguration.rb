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

require "java/lang/JavaOverload"
require "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationInterface"

module ::Org; module Allbinary; module Logic; module Communication; module Ftp; module Configuration

class FtpConfiguration
    include FtpConfigurationInterface
    attr_accessor :ftpServer, :ftpPath, :ftpUserName, :ftpPassword

    def jfields_org_allbinary_logic_communication_ftp_configuration_FtpConfiguration
        @ftpServer = nil unless instance_variable_defined?(:@ftpServer)
        @ftpPath = nil unless instance_variable_defined?(:@ftpPath)
        @ftpUserName = nil unless instance_variable_defined?(:@ftpUserName)
        @ftpPassword = nil unless instance_variable_defined?(:@ftpPassword)
    end

    def initialize(*args)
        case args.length
        when 0 then jnew_org_allbinary_logic_communication_ftp_configuration_FtpConfiguration_0(*args)
        when 1 then jnew_org_allbinary_logic_communication_ftp_configuration_FtpConfiguration_1(*args)
        else raise ArgumentError, "No constructor of FtpConfiguration takes #{args.length} arguments"
        end
    end
    

    def jnew_org_allbinary_logic_communication_ftp_configuration_FtpConfiguration_0()
        jfields_org_allbinary_logic_communication_ftp_configuration_FtpConfiguration
    end
    

    def jnew_org_allbinary_logic_communication_ftp_configuration_FtpConfiguration_1(hashMap)
        jfields_org_allbinary_logic_communication_ftp_configuration_FtpConfiguration
        @ftpServer = hashMap.get(FtpConfigurationData::SERVER)
        @ftpPath = hashMap.get(FtpConfigurationData::PATH)
        @ftpUserName = hashMap.get(FtpConfigurationData::USERNAME)
        @ftpPassword = hashMap.get(FtpConfigurationData::PASSWORD)
    end
    

    def getServer()
        return @ftpServer
    end
    java_overload :getServer, 0
    

    def getPath()
        return @ftpPath
    end
    java_overload :getPath, 0
    

    def getUserName()
        return @ftpUserName
    end
    java_overload :getUserName, 0
    

    def getPassword()
        return @ftpPassword
    end
    java_overload :getPassword, 0
    

    def setServer(value)
        @ftpServer = value
    end
    java_overload :setServer, 1
    

    def setPath(value)
        @ftpPath = value
    end
    java_overload :setPath, 1
    

    def setUserName(value)
        @ftpUserName = value
    end
    java_overload :setUserName, 1
    

    def setPassword(value)
        @ftpPassword = value
    end
    java_overload :setPassword, 1
end

module ::Java; module Util; autoload :HashMap, "java/util/HashMap" unless const_defined?(:HashMap, false); end; end
autoload :FtpConfigurationData, "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationData" unless const_defined?(:FtpConfigurationData, false)

end; end; end; end; end; end

