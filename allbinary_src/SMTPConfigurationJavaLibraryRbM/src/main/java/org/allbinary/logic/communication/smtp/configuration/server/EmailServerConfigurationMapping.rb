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
# package org.allbinary.logic.communication.smtp.configuration.server

require "org/allbinary/data/tables/TableMappingInterface"

class EmailServerConfigurationMapping
    include TableMappingInterface
    attr_accessor :emailServerConfigurationInterface

    def initialize_fields
        @emailServerConfigurationInterface = nil
    end
    

    def initialize(emailServerConfigurationInterface)
        initialize_fields
        @emailServerConfigurationInterface = emailServerConfigurationInterface
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(EmailServerConfigurationData::SERVER, @emailServerConfigurationInterface.getSmtpServer())
        hashMap.put(EmailServerConfigurationData::ACCOUNT, @emailServerConfigurationInterface.getAccountName())
        hashMap.put(EmailServerConfigurationData::PASSWORD, @emailServerConfigurationInterface.getPassword())
        return hashMap
    end
    

    # throws Exception
    def getKey()
        return EmailServerConfigurationData::NAME
    end
    

    # throws Exception
    def toVector()
        vector = BasicArrayListD.new()
        vector.add(@emailServerConfigurationInterface.getSmtpServer())
        return vector
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationData"
require "org/allbinary/logic/communication/smtp/configuration/server/EmailServerConfigurationInterface"

