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
# package org.allbinary.business.user.modules.configuration


module UserConfigurationInterface
    

    def getUserEmailConfigurationInterface()
        raise NotImplementedError
    end
    

    def setUserEmailConfigurationInterface(userEmailConfigurationInterface)
        raise NotImplementedError
    end
    

    def getTimeCreated()
        raise NotImplementedError
    end
    

    def getTimeLastModified()
        raise NotImplementedError
    end
    

    def setTimeCreated(timeCreated)
        raise NotImplementedError
    end
    

    def setTimeLastModified(timeLastModified)
        raise NotImplementedError
    end
end

require "org/allbinary/business/time/created/TimeCreated"
require "org/allbinary/business/time/modified/TimeLastModified"
require "org/allbinary/logic/communication/smtp/configuration/user/UserEmailConfigurationInterface"

