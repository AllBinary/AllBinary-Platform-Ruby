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


module UserEmailEventsConfigurationInterface
    

    def getEventConfigurationHashMap()
        raise NotImplementedError
    end
    

    def addUserEmailEventConfiguration(userEmailEventConfigurationInterface)
        raise NotImplementedError
    end
    

    # throws Exception
    def getEventListener(abeClientInformation, userEmailEventNameData, userInterface)
        raise NotImplementedError
    end
end

require "java/util/HashMap"
require "org/allbinary/business/user/UserInterface"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventListenerInterface"
require "org/allbinary/logic/communication/smtp/event/UserEmailEventNameData"
require "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface"
require "org/allbinary/logic/communication/smtp/configuration/user/event/UserEmailEventConfigurationInterface"

