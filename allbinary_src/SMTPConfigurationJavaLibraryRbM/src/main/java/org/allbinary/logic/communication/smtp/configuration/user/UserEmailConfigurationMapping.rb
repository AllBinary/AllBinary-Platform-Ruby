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
# package org.allbinary.logic.communication.smtp.configuration.user

require "org/allbinary/data/tables/TableMappingInterface"

class UserEmailConfigurationMapping
    include TableMappingInterface
    attr_accessor :userEmailConfigurationInterface

    def initialize_fields
        @userEmailConfigurationInterface = nil
    end
    

    def initialize(userEmailConfigurationInterface)
        initialize_fields
        @userEmailConfigurationInterface = userEmailConfigurationInterface
    end
    

    def toHashMap()
        hashMap = StdUtil.getInstance().createHashMap()
        return hashMap
    end
    

    # throws Exception
    def getKey()
        return UserEmailConfigurationData::NAME
    end
    

    # throws Exception
    def toVector()
        vector = BasicArrayListD.new()
        return vector
    end
end

require "java/util/HashMap"
require "org/allbinary/util/BasicArrayList"
require "org/allbinary/util/BasicArrayListD"
require "org/allbinary/logic/StdUtil"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationData"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface"

