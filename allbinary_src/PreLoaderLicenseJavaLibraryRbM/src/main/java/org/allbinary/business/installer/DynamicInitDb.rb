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
# package org.allbinary.business.installer

require "org/allbinary/business/installer/InitDb"

#Warning you must have sql root access
class DynamicInitDb < InitDb

    def initialize(*args)
        case args.length
        when 1 then constructor1(*args)
        when 2 then constructor2(*args)
        end
    end
    

    def constructor1(abeClientInformation)
        method(:initialize).super_method.call()
        self.setHelper(InitDbHelperFactory.getInstance(abeClientInformation))
    end
    

    def constructor2(abeClientInformation, databaseConnectionInfoInterface)
        method(:initialize).super_method.call()
        self.setHelper(InitDbHelperFactory.getInstance(abeClientInformation, databaseConnectionInfoInterface))
    end
end

require "org/allbinary/business/init/db/DatabaseConnectionInfoInterface"
require "org/allbinary/business/init/db/InitDbHelperFactory"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/system/security/licensing/LicensingException"

