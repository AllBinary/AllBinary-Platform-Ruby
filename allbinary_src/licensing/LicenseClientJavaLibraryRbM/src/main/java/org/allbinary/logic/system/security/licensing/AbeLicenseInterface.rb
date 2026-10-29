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
# package org.allbinary.logic.system.security.licensing


module AbeLicenseInterface
    

    def hasKey()
        raise NotImplementedError
    end
    

    def getKey(keyName)
        raise NotImplementedError
    end
    

    def getLicenseId()
        raise NotImplementedError
    end
    

    def getServers()
        raise NotImplementedError
    end
    

    def getSpecial()
        raise NotImplementedError
    end
    

    def getLicenseType()
        raise NotImplementedError
    end
    

    def isValid()
        raise NotImplementedError
    end
    

    def toString()
        raise NotImplementedError
    end
    alias_method :to_s, :toString
end

require "org/allbinary/util/BasicArrayList"
require "org/allbinary/logic/system/security/licensing/LicenseType"

