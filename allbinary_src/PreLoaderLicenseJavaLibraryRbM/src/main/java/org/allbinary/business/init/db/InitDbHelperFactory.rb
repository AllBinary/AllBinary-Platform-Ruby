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


class InitDbHelperFactory
    

    def initialize()
    end
    

    # throws LicensingException
    def self.getInstance(abeClientInformation, databaseConnectionInfoInterface)
        params = Array.new(1, nil)
        classes = Array.new(1, nil)
        classes[0] = DatabaseConnectionInfoInterface
        params[0] = databaseConnectionInfoInterface
        anyType = AbeFactory.getInstance().getInstance(abeClientInformation, CLASSNAME, classes, params)
        return anyType
    end
    

    # throws LicensingException
    # Java overloaded method: Ruby keeps the last definition
    def self.getInstance(abeClientInformation)
        anyType = AbeFactory.getInstance().getInstance(abeClientInformation, CLASSNAME, nil, nil)
        return anyType
    end
end

require "org/allbinary/logic/system/loader/AbeFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/LicensingException"
require "org/allbinary/business/init/db/DatabaseConnectionInfoInterface"

class InitDbHelperFactory
    CLASSNAME = "org.allbinary.business.installer.InitDbCrypted"
end

