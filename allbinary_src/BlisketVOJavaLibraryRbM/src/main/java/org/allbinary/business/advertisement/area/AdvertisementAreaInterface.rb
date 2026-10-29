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
# package org.allbinary.business.advertisement.area


module AdvertisementAreaInterface
    

    def getName()
        raise NotImplementedError
    end
    

    def getStoreName()
        raise NotImplementedError
    end
    

    def getDescription()
        raise NotImplementedError
    end
    

    def getConstraints()
        raise NotImplementedError
    end
    

    def getCampaign()
        raise NotImplementedError
    end
    

    def setName(name)
        raise NotImplementedError
    end
    

    def setStoreName(storeName)
        raise NotImplementedError
    end
    

    def setDescription(description)
        raise NotImplementedError
    end
    

    def setConstraints(advertisementConstraintsInterface)
        raise NotImplementedError
    end
    

    def setCampaign(campaign)
        raise NotImplementedError
    end
end

require "org/allbinary/business/advertisement/area/AdvertisementAreaConstraintsInterface"

