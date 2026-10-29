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
# package org.allbinary.logic.communication.smtp.configuration.user.event

require "org/allbinary/data/tables/TableMappingInterface"

class UserEmailEventConfigurationMapping
    include TableMappingInterface
    attr_accessor :userEmailEventConfigurationInterface

    def initialize_fields
        @userEmailEventConfigurationInterface = nil
    end
    

    def initialize(userEmailEventConfigurationInterface)
        initialize_fields
        @userEmailEventConfigurationInterface = userEmailEventConfigurationInterface
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        hashMap.put(UserEmailEventConfigurationData::NAME, @userEmailEventConfigurationInterface.getName())
        hashMap.put(UserEmailEventConfigurationData::LISTENER_CLASSPATH, @userEmailEventConfigurationInterface.getEventListenerClassPath())
        return hashMap
    end
    

    # throws Exception
    def getKey()
        return UserEmailEventConfigurationData::NAME
    end
    

    # throws Exception
    def toVector()
        vector = BasicArrayListD.new()
        vector.add(@userEmailEventConfigurationInterface.getName())
        vector.add(@userEmailEventConfigurationInterface.getEventListenerClassPath())
        return vector
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationData"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface"

