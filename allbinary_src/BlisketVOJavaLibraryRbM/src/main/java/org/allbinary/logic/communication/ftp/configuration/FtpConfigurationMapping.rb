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

require "org/allbinary/data/tables/TableMappingInterface"

class FtpConfigurationMapping
    include TableMappingInterface
    attr_accessor :ftpConfigurationInterface

    def initialize_fields
        @ftpConfigurationInterface = nil
    end
    

    def initialize(ftpConfigurationInterface)
        initialize_fields
        @ftpConfigurationInterface = ftpConfigurationInterface
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(FtpConfigurationData::SERVER, @ftpConfigurationInterface.getServer())
        hashMap.put(FtpConfigurationData::USERNAME, @ftpConfigurationInterface.getUserName())
        hashMap.put(FtpConfigurationData::PASSWORD, @ftpConfigurationInterface.getPassword())
        hashMap.put(FtpConfigurationData::PATH, @ftpConfigurationInterface.getPath())
        return hashMap
    end
    

    # throws Exception
    def getKey()
        return FtpConfigurationData::NAME
    end
    

    # throws Exception
    def toVector()
        vector = BasicArrayListD.new()
        vector.add(@ftpConfigurationInterface.getServer())
        vector.add(@ftpConfigurationInterface.getUserName())
        vector.add(@ftpConfigurationInterface.getPassword())
        vector.add(@ftpConfigurationInterface.getPath())
        return vector
    end
end

autoload :HashMap, "java/util/HashMap"
autoload :BasicArrayList, "org/allbinary/util/BasicArrayList"
autoload :BasicArrayListD, "org/allbinary/util/BasicArrayListD"
autoload :StdUtil, "org/allbinary/logic/StdUtil"
autoload :FtpConfigurationData, "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationData"
autoload :FtpConfigurationInterface, "org/allbinary/logic/communication/ftp/configuration/FtpConfigurationInterface"

