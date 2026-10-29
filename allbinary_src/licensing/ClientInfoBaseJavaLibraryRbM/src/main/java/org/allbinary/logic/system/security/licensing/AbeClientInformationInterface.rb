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


module AbeClientInformationInterface
    

    def init()
        raise NotImplementedError
    end
    

    def getOperatingSystemInterface()
        raise NotImplementedError
    end
    

    def getName()
        raise NotImplementedError
    end
    

    def getSpecialName()
        raise NotImplementedError
    end
    

    def getVersion()
        raise NotImplementedError
    end
    

    def getLicenseId()
        raise NotImplementedError
    end
    

    def getLicenseServers()
        raise NotImplementedError
    end
    

    def getLicenseServer(index)
        raise NotImplementedError
    end
    

    def getNumberOfLicenseServers()
        raise NotImplementedError
    end
    

    def toHashtable()
        raise NotImplementedError
    end
    

    def isSameId(alicenseId)
        raise NotImplementedError
    end
    

    def isLargerOrDifferentServerList(vector)
        raise NotImplementedError
    end
    

    def isHardSale()
        raise NotImplementedError
    end
    

    def toShortString()
        raise NotImplementedError
    end
end

require "org/allbinary/logic/system/os/GenericOperatingSystem"
require "org/allbinary/util/ABHashtable"
require "org/allbinary/util/BasicArrayList"

